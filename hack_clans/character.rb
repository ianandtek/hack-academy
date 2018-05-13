class Character
  attr_accessor :health, :defense, :side, :sight, :name, :color, :special_actions

  def initialize name, color, context
    @name = name
    @sight = 3
    @health = 100
    @defense = 10
    @side = 1
    @special_actions = []
    @color = color

    @context = context
  end

  def rotate
    #rotarse 180 grados
    if @side == 1
      @side = -1
    elsif @side == -1
      @side = 1
    end
    :rotate
  end

  def detect
    #detectar la casilla frente al char
    @context.detect_tile self
  end

  def look
    #detectar las tres casillas frente al char
    @context.look_titles self
  end

  def rest!
    #recuperar 2 de health
    :rest
  end

  def attack!
    #atacar la casilla frente al char
    :attack
  end

  def move!
    #moverse a la casilla frente al char
    :move
  end

  def to_s
    if @side == 1
      "#{@name}".colorize(self.color) + ">".red
    elsif @side == -1
      "<".red + "#{@name}".colorize(self.color)
    end
  end

  def push_special_action action
    @special_actions.push action
  end

  def special_action_used? action
    @special_actions.each do |special_action|
      if special_action && special_action.name = action.name
        return true
      end
    end
    return false
  end

  def refresh_special_actions
    @special_actions.map! do |special_action|
      if special_action && special_action.wait > 0
        special_action.wait += - 1
        special_action
      elsif special_action && special_action.wait == 0
        nil
      end
    end
  end

  def turn
  end
end
