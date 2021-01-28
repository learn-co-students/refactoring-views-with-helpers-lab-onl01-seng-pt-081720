module SongsHelper
    def display_artist()
        if self.artist
            link_to self.artist_name, artist_path(artist)
        else
            link_to "Add Artist", edit_song_path(self)
        end
    end
end
