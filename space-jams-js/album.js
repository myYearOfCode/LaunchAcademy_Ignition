class Album {
  constructor(album_id, album_name, artists){
    this.id = album_id // - returns the ID of the album
    this.title = album_name // - returns the title of the album
    this.artists = artists // - returns the name of the artist(s) on the album
    this.tracks = [] // - returns an array of objects representing each track on the album
    this.durationMin = () => {
      return this.tracks.reduce((acc, current) => {
        return acc + (current.duration_ms / 60000)
      },0).toFixed(2)
    }
    this.summary = () => {
      let trackListing = ""
      this.tracks.forEach((each) => {
        trackListing += `- ${each.title} \n`
      })
      return `Name: ${this.title}\nArtist(s): ${this.artists}\nDuration (min.): ${this.durationMin()}\nTracks:\n${trackListing}`
    }
  }
}

module.exports = Album;
