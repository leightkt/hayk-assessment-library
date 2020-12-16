require 'pry'

require_relative './book.rb'
require_relative './author.rb'
require_relative './BookAuthor.rb'


book1 = Book.new("Tale of Two Cities")
book2 = Book.new("Three Musketeers")
book3 = Book.new("Great Expectations")
book4 = Book.new("The Greatest Thing Ever Written")

author1 = Author.new("Charles Dickens")
author2 = Author.new("Alexander Dumas")
author3 = Author.new("Me")
author4 = Author.new("Also Me")

book1.add_author(author1)
book2.add_author(author2)
author1.add_book(book3)
book4.add_author(author3)
book4.add_author(author4)

binding.pry