class Line
  def initialize ( set, width )
    @elements = []
    position = 0
    set.each { |element|
      @elements.push([position,element])
      position = position + element + 1
    }
  end

  def output_text
    string = "00000"
    @elements.each { |element|
         counter = element[1]
         start_position=element[0]
         while (counter > 0) do
           string[start_position+counter-1] = 'x'
           counter -=1
         end
      }
    string
  end
end
