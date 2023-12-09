/*
You can also add:

name = (input song)
album = (input album)

Into the data block below to further specify the tracks you want in yor playlist
*/

data "spotify_search_track" "by_artist" {
  artist = "Travis Scott"
}



resource "spotify_playlist" "my-playlist" {
  name        = "The Best of Travis Scott"
  description = "This playlist was created by Terraform - Current Top 10 Travis Scott Songs"
  public      = true

  tracks = [
    data.spotify_search_track.by_artist.tracks[0].id,
    data.spotify_search_track.by_artist.tracks[1].id,
    data.spotify_search_track.by_artist.tracks[2].id,
    data.spotify_search_track.by_artist.tracks[3].id,
    data.spotify_search_track.by_artist.tracks[4].id,

    data.spotify_search_track.by_artist.tracks[5].id,
    data.spotify_search_track.by_artist.tracks[6].id,
    data.spotify_search_track.by_artist.tracks[7].id,
    data.spotify_search_track.by_artist.tracks[8].id,
    data.spotify_search_track.by_artist.tracks[9].id,
  ]
}