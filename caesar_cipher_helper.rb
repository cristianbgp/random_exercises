class CaesarCipher
  def initialize(shift)
    @shift = shift
    @alphabet =  Array("A".."Z")
    p @alphabet
  end

  def encode(string)
    @shifted_alphabet = @alphabet.rotate(@shift)
    p @shifted_alphabet
    hash = Hash[@alphabet.zip(@shifted_alphabet)]
    p hash
    array_string = string.upcase.split("")
    p array_string
    p result = array_string.map { |letter| hash[letter] }
    result = array_string.join
    p result
  end
  
  def decode(string)
    #your code here
  end
end

c=CaesarCipher.new(5)
c.encode('Codewars') #'HTIJBFWX'