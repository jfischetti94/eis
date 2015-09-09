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
    anIntegerArray.cycle(1) {|anInteger| sum += anInteger}    
    return numberDescription(sum)
  end

  def numberDescription(anInteger)
    numberStringCollection = anInteger.to_s.split('')
    description = ""
    if numberStringCollection.size <= 2
      numberStringCollection.cycle(1) { |stringNumber| description <<numberStringDescription(stringNumber)<<","}
      description = description.chomp(",")
    else
      description << overflowNumberDescription()
    end
    return description
  end

  def numberStringDescription(aStringNumber)
    descriptions = {"0" => "vacio",
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

  def overflowNumberDescription()
    return "demasiado grande"
  end

  public    :chop, :sum
  private   :numberStringDescription,
            :overflowNumberDescription
            :numberDescription

end