require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artists_count = {}
  
  def initialize(song_name, artist_name, genre_type)
    @name = song_name
    @artist = artist_name
    @genre = genre_type
    @@count += 1 
  end 
  
  def self.count
    @@count
  end 
  
  def self.artists(artist_name)
    if !@@artists.include?(artist_name)
      @@artists << artist_name
  end 
  
  def self.genres
    @@genres
  end 
  
  def self.genre_count
    @@genre_count
  end 
  
  def self.artists_count 
    @@artists_count
  end 
end 