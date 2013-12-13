# Define a class BookInStock which represents a book with an isbn
# number, isbn, and price of the book as a floating-point number,
# price, as attributes. The constructor should accept the ISBN number
# (a string) as the first argument and price as second argument, and
# should raise ArgumentError (one of Ruby's built-in exception types)
# if the ISBN number is the empty string or if the price is less than
# or equal to zero.


# Include the proper getters and setters for these attributes. Include
# a method price_as_string that returns the price of the book with a
# leading dollar sign and trailing zeros, that is, a price of 20
# should display as "$20.00" and a price of 33.8 should display as
# "$33.80".

class BookInStock
  def initialize(isbn_number, price)
    raise ArgumentError if  isbn_number == nil || isbn_number.length == 0
    raise ArgumentError if price <= 0
    
    @isbn_number = isbn_number
    @price = price
  end
  
  attr_accessor :isbn_number # sugar for generating getters/setters

  def price
    @price
  end
  def price=(price)
    @price = price
  end

  def price_as_string
    "$%0.2f" % @price
  end
end

book = BookInStock.new("test isbn", 50)
#book2 = BookInStock.new("test isbn", 0.00)
#book3 = BookInStock.new("test isbn", 0)
puts BookInStock.new("test isbn",5).price == 5
puts BookInStock.new("test isbn",5).isbn_number == "test isbn"
book4 = BookInStock.new("test isbn",5)
book4.price = 9
book4.isbn_number = "test isbn new"
puts book4.price == 9
puts book4.isbn_number == "test isbn new"
puts book4.price_as_string == "$9.00"
book4.price = 9.5078
puts book4.price_as_string == "$9.51" # it is getting rounded off


