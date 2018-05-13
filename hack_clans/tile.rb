class Tile
  attr_accessor :content

  def initialize
    @content = "_"
  end

  def empty?
    @content && @content == "_"
  end

  def type_of
    @content.class.ancestors[2].name
  end

  def type_of_enemy
    @content.class.ancestors[1].name
  end

  def to_s
    @content.to_s
  end

end
