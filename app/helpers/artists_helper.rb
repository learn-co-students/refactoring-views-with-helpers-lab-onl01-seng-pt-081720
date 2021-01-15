module ArtistsHelper

    def display_artist(artist)
        binding.pry
        if !!artist
            link_to artist.name, artist_path(artist)
        else
            link_to "Add Artist", edit_song_path(params[:id])
        end
    end
end
