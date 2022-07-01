require 'pry'
class Song


    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = []

    attr_accessor :name, :artist, :genre
    
def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    @@genre_count << genre
end

def self.genre_count
    @@genre_count.tally
end

def self.artists
    @@artists.uniq
end

   def self.genres
    @@genres.uniq
   end

def self.count
    @@count
end

end

binding.pry