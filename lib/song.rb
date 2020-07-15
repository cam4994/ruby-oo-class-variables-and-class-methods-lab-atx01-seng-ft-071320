class Song 
  @@count = 0 
  @@artists = [] 
  @@genres = [] 
  @@genre_count = {} 
  @@artist_count = {} 
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
      @name = name 
      @artist = artist 
      @genre = genre 
      @@count +=1 
      @@artists << name 
      if genre_count[genre]
      @@genres << genre 
      
  end 
  
  def self.count 
    @@count 
  end 
  
end 