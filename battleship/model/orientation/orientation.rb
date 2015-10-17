class Orientation

	def self.horizontal
		return Horizontal.new
	end

	def self.vertical
		return Vertical.new()
	end

  def ==(o)
    o.class == self.class
  end

  def coords_from_for(coord,size)
  	raise "Subclass Responsibility"
  end

end