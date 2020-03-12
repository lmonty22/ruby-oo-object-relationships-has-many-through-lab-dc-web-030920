class Artist 
attr_reader :name

@@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all 
        @@all
    end

    def songs
        #this method will need to return all songs associated with the artist
        Song.all.find_all do |song|
            song.artist == self
        end
    end 

    def new_song(title, genre)
        #creates a new song attaching self as the artist 
        Song.new(title, self, genre)
    end 

    def genres 
       self.songs.map do |song|
        song.genre
       end
    end
end 