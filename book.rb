class Book
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_author(name)
        BookAuthor.new(self, name)
    end

    def authors
        BookAuthor.all.select do |bookauthor|
            bookauthor.book == self
        end.map do |bookauthor|
            bookauthor.author.name
        end
    end


end