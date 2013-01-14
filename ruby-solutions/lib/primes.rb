class Primes
  
  LIKELY_ENDING = Hash.new(false).merge({
    '1' => true,
    '3' => true,
    '7' => true,
    '9' => true
  })
  
  class << self
  
    def include?(num)
      if num < 0
        include?(num * -1)
      elsif num < 4
        true
      elsif unlikely?(num)
        false
      else
        sqrt = Math.sqrt(num).to_i
        prime = (2..sqrt).each do |divisor|
          break false if num % divisor == 0
        end
        !!prime
      end      
    end
    
    def unlikely?(num)
      num > 9 && !LIKELY_ENDING[ num.to_s[-1] ]
    end
    
  end
  
end