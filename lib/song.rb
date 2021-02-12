require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        resulting_hash = Hash.new(0)
        @@genres.each { |key| resulting_hash[key] += 1 }
        return resulting_hash
    end

    def self.artist_count
        resulting_hash = Hash.new(0)
        @@artists.each { |key| resulting_hash[key] += 1 }
        return resulting_hash
    end

end

#binding.pry