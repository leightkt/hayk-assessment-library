class Author
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_book(title)
        BookAuthor.new(title, self)
    end

    def books
        bookauthors = BookAuthor.all.select do |bookauthor|
            bookauthor.author == self
        end
        books = []
        bookauthors.each do |bookauthor|
            Book.all.each do |book|
                if bookauthor.book == book
                    books << book
                end
            end
        end
        books
    end



end