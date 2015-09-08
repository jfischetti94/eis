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
    integers = (sum.to_s.split('')).map{| stringNumber | stringNumber.to_i}
    return numbersDescription(integers)
  end

  def numbersDescription(integerCollection)
    description = ""
    if integerCollection.size <= 2
      integerCollection.cycle(1) { |number| description <<oneDigitNumberDescriprion(number)<<","}
      description = description.chomp(",")
    else
      description << overflowNumberDescription()
    end
    return description
  end

  def oneDigitNumberDescriprion(anInteger)
    descriptions = {0 => "vacio",
                    1 => "uno",
                    2 => "dos",
                    3 => "tres",
                    4 => "cuatro",
                    5 => "cinco",
                    6 => "seis",
                    7 => "siete",
                    8 => "ocho",
                    9 => "nueve"}
    return descriptions.delete(anInteger)
  end

  def overflowNumberDescription()
    return "demasiado grande"
  end

  public    :chop, :sum
  private   :oneDigitNumberDescriprion,
            :overflowNumberDescription

end