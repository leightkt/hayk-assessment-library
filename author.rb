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
        BookAuthor.all.select do |bookauthor|
            bookauthor.author == self
        end.map do |bookauthor|
            bookauthor.book.title
        end
    end



end