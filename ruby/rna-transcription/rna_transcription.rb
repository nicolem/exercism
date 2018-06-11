class Complement
  def self.of_dna input
    transpose = {'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U'}
    new_string = ''
    for i in 0...input.length
      new_string << transpose[input[i]] unless transpose[input[i]].nil?
    end
    if input.length == new_string.length
      new_string
    else
      ''
    end
  end
end

class BookKeeping
  VERSION = 4
end
