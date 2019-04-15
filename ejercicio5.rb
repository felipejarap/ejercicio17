class Morseable
  def initialize(number)
    @number = number
  end
  def generate_hash(index)
    # Esto es una aberración y debe ser refactorizado!
    # case number
    # when 1
    #   puts '-----'
    # when 2
    #   puts '.----'
    # when 3
    #   puts '..---'
    # when 4
    #   puts '...--'
    # when 5
    #   puts '....-'
    # when 6
    #   puts '-....'
    # when 7
    #   puts '--...'
    # when 8
    #   puts '---..'
    # when 9
    #   puts '----.'
    # end
    hash = [nil,'-----','.----','..---','...--','....-','-....','--...','---..','----.']
    hash[index]
  end

  def to_morse
    self.generate_hash(@number)
  end
end

m = Morseable.new(5)
print m.to_morse