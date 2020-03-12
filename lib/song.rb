require 'pry'
class Song
    attr_reader :artist, :title, :genre
@@all = []
    #title will be a string, artist with me an instance of the Artist class, 
    #var3 will be an instatnce of the Class genre
    def initialize (title, artist, genre)
        @title = title
        @artist = artist 
        @genre = genre
        @@all << self
    end 

    def self.all 
        @@all 
    end 

end 