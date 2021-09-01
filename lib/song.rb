class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def self.count
        @@count
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
    end

    def self.artist_count
        @@artists.tally
    end

    def self.genre_count
        @@genres.tally
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@genres << @genre
        @@count +=1
        
    end


end