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
    description = ''
    anIntegerArray.cycle(1) {|anInteger| sum += anInteger}
    if sum < 10
      description = oneDigitNumberDescriprion(sum)
    else
      description = self.arraySumDescription(sum)
    end
    return description
  end

  def arraySumDescription(anInteger)
    description = ""
    if anInteger < 100
      descriptionArray = (anInteger.to_s.split('')).map{| number | self.oneDigitNumberDescriprion(number.to_i)} 
      description <<descriptionArray.at(0)<<","<<descriptionArray.at(1)
    else
      description = "demasiado grande"
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
=begin
  public    :chop, :sum
  private   :arraySumDescription
=end
end