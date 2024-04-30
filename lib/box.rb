class Box

  def initialize(w, h)
    @width = w
    @height = h
  end

  def get_width
    @width
  end

  def set_width=(value)
    @width = value
  end

  protected
  def get_area
    @width * @height
  end
end

class Circle < Box

  def get_box_area
    p get_area
  end
end

box = Box.new(2, 3)
# puts box.get_area
circle = Circle.new(3, 4)
circle.get_box_area
