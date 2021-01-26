class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end
  
  def artist_name=(name)
    a = Artist.find_by_name(name)

    if a && self.artist.blank?
      self.artist = a 
      self.save
    else
      artist = Artist.new(name: name)
      self.artist = artist 
      self.save
    end
  end
end
