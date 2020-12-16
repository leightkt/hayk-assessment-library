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
        books = []
        BookAuthor.all.each do |bookauthor|
            if bookauthor.author == self
                books << bookauthor.book.title
            end
        end
        books
    end



end