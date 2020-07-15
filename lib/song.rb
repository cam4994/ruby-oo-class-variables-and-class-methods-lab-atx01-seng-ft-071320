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
      if @@genre_count[genre]
        @@genre_count[genre]+=1 
      else 
        @@genres << genre 
        @@genre_count[genre] = 1 
      end 
      
      if @@artist_count[artist]
        @@artist_count[artist]+=1 
      else 
        @@artists << artist 
        @@artist_count[artist] = 1 
      end 
      
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genres 
    @@genres
  end 
  
  def self.artists
    @@artists
  end 
  
  def self.genre_count 
    @@genre_count
  end 
  
  def self.artist_count 
    @@artist_count
  end 
  
end 