# frozen_string_literal: true

# Class Book
class Book

  attr_reader :id
  attr_accessor :title

  def initialize(id, title, author, pages)
    @id = id
    @title = title
    @author = author
    @pages = pages
  end
end

class ThreeD < Book

end

class Eco < Book

end

book = Book.new(1, 'Happy', 'Lalo', 352)
puts book.title
book.title = 'Holly'
puts book.title, book.id
puts ThreeD.new(2, 'Lunar', 'Magic J.', '122')
