require_relative "../character"
require_relative "../special_action"

class Mage < Character

  def turn
  end

  def fire_ball!
    SpecialAction.new "The most cliche skill ever: Fire Ball!", 1, {health: 1, defense: 0, push: 0}
  end

  def flipendo!
    SpecialAction.new "A Harry Potter spell that only existed in videogames :v FLIPENDO!", 3, {health: 3, defense: 20, push: 0}
  end
  
  def water_drill!
    SpecialAction.new "This will drown you: Water Drill!!", 5, {health: 6, defense: 15, push: 1}
  end

  def avada_kedavra!
    SpecialAction.new "Avada Kedavra!!", 15, {health: 70, defense: 25, push: 0} 
  end
end
