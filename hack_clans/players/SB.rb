require_relative '../characters/zombie' # => Deebes requerir la clase de la que heredarás.

=begin
Documentación
rotate: Cambia la dirección del personaje.
detect: Verifica el contenido de la frente al char.
look: Verifica el contenido de 3 casillas en adelante.
attack!: Ataque básico.
move!: Mover el personaje a la siguiente casilla.
rest!: Recupera 2 de HP en el turno invocado.
=end


class Maxduro < Zombie # => Tu personaje debe heredar de la clase que quieres usar.

  def turn
    tile = self.detect
    if tile && tile.empty?
      self.rest!
    else
      case rand 2
        when 1
          self.attack!
        when 2
          randomSpecialAction
        end
    end
  end

  def randomSpecialAction
    case rand(3)
      when 0
        self.infected_bite!
      when 1
        self.blood_suck!
      when 2
        self.gimme_your_brain!
    end
  end
end
