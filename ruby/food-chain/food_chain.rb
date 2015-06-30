class FoodChain
  VERSION = 1

  def self.song
    song_file = File.expand_path('../song.txt', __FILE__)
    expected = IO.read(song_file)
    expected
  end

end