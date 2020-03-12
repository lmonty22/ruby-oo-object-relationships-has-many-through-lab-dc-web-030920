class Genre
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def songs
        #find all the songs of self genre
        Song.all.find_all do |song|
            song.genre == self
        end
    end 
    
    def self.all 
        @@all
    end

    def artists
        #finding artists with a song of self genre
        self.songs.map do |song|
            song.artist
        end
    end 
end 