class Raindrops
  VERSION = 1
  SOUNDS = ["Pling", "Plang", "Plong"]
  def self.convert(number)
    output = ""
    [3,5,7].each.with_index do |factor, index|
      output = output + SOUNDS[index] if number % factor == 0
    end
    output == "" ? number.to_s : output
  end
end

