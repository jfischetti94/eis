class Chopper

  def new()
  end

  def chop(anObject,array)
    if (array.include? anObject)
      return 0
    else
      return -1
    end
  end
  
end