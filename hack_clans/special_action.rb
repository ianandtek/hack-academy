class SpecialAction
  attr_accessor :name, :cooldown, :wait, :effect

  def initialize name, cooldown, effect
    @name = name
    @cooldown = cooldown
    @effect = effect
    #Cuando wait == 0 quiere decir que puede ser utilizada la accion!
    @wait = cooldown
  end
end
