data "spotify_search_track" "by_artist" {
  artist = "Travis Scott"

}

resource "spotify_playlist" "my-playlist" {
  name        = "Paddys Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
    data.spotify_search_track.by_artist.tracks[0].id,
    data.spotify_search_track.by_artist.tracks[1].id,
    data.spotify_search_track.by_artist.tracks[2].id,
    data.spotify_search_track.by_artist.tracks[3].id,
    data.spotify_search_track.by_artist.tracks[4].id,
  ]
}