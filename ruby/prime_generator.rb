class Prime_Generator
  
  attr_reader :stack  
  
  def initialize max = 3
    @stack  = [1,2,3]
    fill_to max  
  end  

  def fill_to max
    n = @stack.last
    while true do
      n += 2  
      return @stack if n > max  
      @stack << n if is_prime? n  
    end  
  end  
  
  def is_prime? n
    return false if n == 1 || n <= 0
    max = Math.sqrt(n).floor  
    fill_to(max + 1) if max > @stack.last  
  
    @stack.each do |i|  
      next if i == 1  
      return true if i > max  
      return false if n % i == 0  
    end  
  
    true  
  end  
  
end