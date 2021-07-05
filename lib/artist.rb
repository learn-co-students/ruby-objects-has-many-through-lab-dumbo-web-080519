class Artist
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end
end
