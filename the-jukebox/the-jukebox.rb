class Jukebox
  def initialize(playlist_requested)
    @playlist_requested = playlist_requested
    @playlist = []
    @CURRENT_SONGS = ["Hello - Lionel Ritchie", "Kokomo - The Beach Boys", "Girl You Know It’s True - Milli Vanilli", "Agadoo - Black Lace", "Down Under - Men at Work", "Nothing's Gonna Stop Us Now - Starship", "Get Outta My Dreams, Get Into My Car - Billy Ocean", "I Just Called To Say I Love You - Stevie Wonder", "Hangin' Tough - New Kids on the Block", "We Built This City - Starship", "Wake Me Up Before You Go Go - Wham!", "We Didn't Start The Fire - Billy Joel", "I Wanna Dance With Somebody - Whitney Houston", "U Can't Touch This - MC Hammer"]
  end

  def create_playlist()
    @playlist_requested.each do |song|
      if @CURRENT_SONGS.include?(song)
        @playlist.push(song)
      end
    end
    puts @playlist
  end

  def shuffle_songs()
    @playlist.shuffle!
  end

  def play!()
    @playlist.shift()
  end

  def add_track(song)
    @playlist.push(song) if @CURRENT_SONGS.include?(song)
    @CURRENT_SONGS.include?(song)
  end
end
