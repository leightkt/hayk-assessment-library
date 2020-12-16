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
        bookauthors = BookAuthor.all.select do |bookauthor|
            bookauthor.book == self
        end
        bookauthors.each do |bookauthor|
            Author.all.each do |author|
                if bookauthor.author == author
                    authors << author
                end
            end
        end
        authors
    end


end