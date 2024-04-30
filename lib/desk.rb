# frozen_string_literal: true

require_relative 'apple'

# Class Desk
class Desk
  include Trig

  def get_pi
    puts Trig::PI
  end
end

d = Desk.new
d.get_pi

module Desktop
  include Trig

  def self.desktop_pi
    Trig::PI
  end
end

Desktop.desktop_pi
Desk::PI
Conditional.get_unless(5)
