class Chopper

  def new()
  end

  def chop(anObject,array)
    index = -1
    possibleIndex = array.find_index(anObject)
    if not (possibleIndex.nil?)
      index = possibleIndex
    end
    return index
  end
  
  def sum(anIntegerArray)
    sum = 0
    sumDescription = ""
    if (anIntegerArray.empty?)
      sumDescription = emptyArrayDescription
    else
      anIntegerArray.cycle(1) {|anInteger| sum += anInteger}
      begin sumDescription = numberDescription(sum)
        rescue ArgumentError => e
          sumDescription = e.message
      end
    end
    return sumDescription
  end

  def numberDescription(anInteger)
    numberStringCollection = anInteger.to_s.split('')
    description = ""
    if numberStringCollection.size > 2
      raise ArgumentError.new(overflowNumberDescription())
    end
    numberStringCollection.cycle(1) { |stringNumber| description <<numberStringDescription(stringNumber)<<","} 
    return description.chomp(",")      
  end

  def numberStringDescription(aStringNumber)
    descriptions = {"0" => "cero",
                    "1" => "uno",
                    "2" => "dos",
                    "3" => "tres",
                    "4" => "cuatro",
                    "5" => "cinco",
                    "6" => "seis",
                    "7" => "siete",
                    "8" => "ocho",
                    "9" => "nueve"}
    return descriptions.delete(aStringNumber)
  end

  def emptyArrayDescription
    return "vacio"
  end

  def overflowNumberDescription()
    return "demasiado grande"
  end

  public    :chop, :sum
  private   :numberStringDescription,
            :overflowNumberDescription,
            :numberDescription,
            :emptyArrayDescription
end