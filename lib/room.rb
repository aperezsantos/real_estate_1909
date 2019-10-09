class Room
  attr_reader :room, :category, :length, :width, :area

  def initialize(category_param, length_param, width_param)
    @room = room
    @category = category_param
    @length = length_param
    @width = width_param
  end

  def area
    @length * @width
  end
end
