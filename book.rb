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
        authors = []
        BookAuthor.all.select do |bookauthor|
            if bookauthor.book == self
                authors << bookauthor.author.name
            end
        end
        authors
    end


end