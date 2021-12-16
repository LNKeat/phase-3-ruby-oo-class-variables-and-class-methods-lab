require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@all = []
  def initialize(song, artist, genre)
    @name= song
    @artist= artist
    @genre= genre
    @@artists << self.artist
    @@genres << self.genre
    @@count += 1
    @@all << self
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
    g_count = {}
    @@genres.each do |g|
      if g_count[g]
        g_count[g] += 1 
      else
        g_count[g] = 1
      end
    end
    g_count
  end

  def self.artist_count
    a_count = {}
    @@artists.each do |a|
      if a_count[a]
        a_count[a] += 1 
      else
        a_count[a] = 1
      end
    end
    a_count
  end


end

Song.new("song1", "artist1", "genre1")
Song.new("song2", "artist1", "genre2")
Song.new("song3", "artist2", "genre2")
Song.new("song4", "artist1", "genre1")
Song.new("song5", "artist1", "genre1")
binding.pry