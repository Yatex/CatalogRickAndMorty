class Calculator
  def add(a,b,*c)
    result = a + b
    c.each do |element|
      result += element
    end
    return result
  end
end
