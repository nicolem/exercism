class Hamming

  def self.compute (a, b)
    if a.length != b.length
      raise ArgumentError.new("Strings must be of equal length")
    end

    count = 0
    for i in 0...a.length
      count +=1 if a[i] != b[i]
    end
    count
  end

end

class BookKeeping
  VERSION = 3
end
