 module BookKeeping
   VERSION = 2
 end
class Pangram
  def self.is_pangram?(string)
    string.downcase.split('').uniq.count { |x| ('a'..'z').include?(x) } == 26
  end
end
