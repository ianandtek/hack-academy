require 'colorize'
require_relative 'board'

class Engine
  attr_accessor :char1, :char2, :board
  BOARD_LENGTH = 10

  def initialize
    @board = Board.new BOARD_LENGTH
  end

  def init_game char1, char2
    @char1 = char1
    @char2 = char2
    @board.place_character @char1, 0

    @board.place_character @char2, BOARD_LENGTH - 1
    @char2.rotate
  end

  def keep_playing
    self.char1.health > 0 && self.char2.health > 0
  end

  def boundaries_check position
    position >= 0 && position < BOARD_LENGTH
  end

  def collision_check position
    self.board.get(position).empty?
  end

  def execute_special action, char, oponent
    if(char.special_action_used? action)
      puts "MOVIMIENTO ERRADO: #{char.name} especial en cooldown".red
    else
      oponent.health -= action.effect[:health]
      oponent.defense -= action.effect[:defense]
      if action.effect[:push] > 0
        oponent.rotate
        move_player oponent
        oponent.rotate
      end
      char.push_special_action action
    end
  end

  def attack_player char, oponent
    damage = 12

    actual_position = self.board.find_character char
    next_postion = actual_position + char.side

    if(boundaries_check next_postion)
      tile = self.board.get next_postion
      if tile.type_of == "Character"
          if oponent.defense > 20
            oponent.health -= damage - 10
          elsif oponent.defense > 5
            oponent.health -= damage - 3
          else
            oponent.health -= damage
          end
          oponent.defense -= 1
      end
    end

  end

  def move_player char
    actual_position = self.board.find_character char
    next_postion = actual_position + char.side

    if(boundaries_check next_postion)
      if(collision_check next_postion)
        self.board.blank actual_position
        self.board.place_character(char, next_postion)
      else
        puts "MOVIMIENTO ERRADO: #{char.name} no se puede mover a una casilla ocupada".red
      end
    else
      puts "MOVIMIENTO ERRADO: #{char.name} no se puede mover a una casilla fuera del tablero".red
    end
  end

  def rest_player char
    char.health += 2
  end

  def rest_defense_player char
    char.defense += 2
  end

  def detect_tile char
    actual_position = self.board.find_character char
    next_postion = actual_position + char.side
    if(boundaries_check next_postion)
      self.board.get(next_postion)
    else
      puts "El jugador #{char.name} detecta un limite en el tablero".colorize(char.color)
    end
  end

  def look_titles char
    titles = []
    aux_sight = char.sight-1
    aux_side = 0

    actual_position = self.board.find_character char
    next_postion = actual_position + char.side

    for i in (0..aux_sight)
      aux_side = i * char.side
      if(boundaries_check(next_postion + aux_side))
        titles << self.board.get(next_postion + aux_side)
      end
    end
    titles
  end

  def do_action action, char, oponent
    case action
    when :rotate
      puts "El jugador #{char.name} se voltea!".colorize(char.color)
    when :move
      move_player char
      puts "El jugador #{char.name} se mueve en este turno".colorize(char.color)
    when :attack
      attack_player char, oponent
      puts "El jugador #{char.name} hace un".colorize(char.color) + " ataque ".red + "normal en este turno".colorize(char.color)
    when :rest
      rest_player char
      puts "El jugador #{char.name} descansa en este turno".colorize(char.color)
    when :rest_full
      rest_player char
      rest_defense_player char
      puts "El jugador #{char.name} descansa health y defensa! en este turno".colorize(char.color)
    else
      if action.class.name == "SpecialAction"
        execute_special(action, char, oponent)
        puts "El jugador #{char.name} hace un".colorize(char.color) + " ATAQUE ESPECIAL: '#{action.name}' ".red + "en este turno".colorize(char.color)
      else
        puts "La accion #{action} no es reconocida!".colorize(char.color)
      end
    end
  end

  def welcome_message
    system "clear"
    puts "Bienvenido! Este es el tablero inicial!"
    puts "\n-----------------------------------------------------------------".blue
    self.board.draw
    puts "\n-----------------------------------------------------------------".blue
    puts "Presione ENTER para continuar..."
    gets
  end

  def health_bar
    system "clear"
    puts "\n-----------------------------------------------------------------".blue
    print "#{char1.name} health #{char1.health}     ".colorize char1.color
    puts "#{char2.name}  health #{char2.health}".colorize char2.color
    print "             defense #{char1.defense}".colorize char1.color
    puts "     defense #{char2.defense}".colorize char2.color
    puts "\n-----------------------------------------------------------------\n".blue
  end

  def turn actual_char, oponent_char
    health_bar
    puts "\n-----------------------------------------------------------------".colorize actual_char.color
    puts "Turno de #{actual_char.name}".colorize actual_char.color
    action = actual_char.turn
    do_action action, actual_char, oponent_char
    actual_char.refresh_special_actions
    self.board.draw
    puts "\n-----------------------------------------------------------------\n".colorize actual_char.color
    sleep 1
  end

  def winner_message char
    health_bar
    puts "GANO #{char.name} !!!!!!!!!!!!!!!!!!!!!".red
  end

  def go!
    welcome_message
    while true
      turn self.char1, self.char2
      if self.char2.health <= 0
        winner_message char1
        break
      end

      turn self.char2, self.char1
      if self.char1.health <= 0
        winner_message char2
        break
      end
    end
  end
end
