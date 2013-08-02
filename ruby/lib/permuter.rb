class Permuter
  def next_asc n
    digits = n.to_s.split ''
    l = k = -1
    #Find the largest index k such that a[k] < a[k + 1]. If no such index exists, the permutation is the last permutation.
    (digits.length - 2).downto(0).each do |i|
  	  if digits[i] < digits[i + 1]
  	    k = i
  	    break
    	end
    end
    return nil if k == -1

    #Find the largest index l such that a[k] < a[l]. Since k + 1 is such an index, l is well defined and satisfies k < l.
    (digits.length - 1).downto(0).each do |i|
      if digits[k] < digits[i]
        l = i
        break
      end
    end

    #Swap a[k] with a[l].
    digits[k],digits[l] = digits[l],digits[k]

    #Reverse the sequence from a[k + 1] up to and including the final element a[n].
    join(digits[0,k + 1] + digits[k + 1, digits.length - k].reverse)
  end

  def next_desc n
    digits = n.to_s.split ''
    l = k = -1

    #Find the largest index k such that a[k] > a[k + 1]. If no such index exists, the permutation is the last permutation.
    (digits.length - 2).downto(0).each do |i|
  	  if digits[i] > digits[i + 1]
    	  k = i
  	    break
  	  end
    end
    return nil if k == -1

    #Find the largest index l such that a[k] > a[l]. Since k + 1 is such an index, l is well defined and satisfies k < l.
    (digits.length - 1).downto(0).each do |i|
      if digits[k] > digits[i]
        l = i
        break
      end
    end

    #Swap a[k] with a[l].
    digits[k],digits[l] = digits[l],digits[k]

    #Reverse the sequence from a[k + 1] up to and including the final element a[n].
    join(digits[0,k + 1] + digits[k + 1, digits.length - k].reverse)
  end

  :private
  def join a
    a.join.to_s
  end
end