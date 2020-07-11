class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new
    song.save
    song
  end
  
  def self.new_by_name(str)
    song = Song.new
    song.name = str
    song
  end
  
  def self.create_by_name(str)
    song = self.create
    song.name = str
    song
  end
  
  def self.find_by_name(str)
    @@all.each do |f|
      if f.name == str
        return f.name
      end
    end
  end
end
  
  
  
  
  
  
  
  
  
  
  
  
  # def self.find_by_name(str)
  #   self.all.find {|string|string.name == str}
  #   end
  # end
  
  # def find_or_create_by_name(str)
  #   self.find_by_name(str) || self.create_by_name(str)
  # end
