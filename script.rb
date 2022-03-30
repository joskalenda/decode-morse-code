@decoder_letters = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
             '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
             '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
             '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
             '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
             '---..' => '8', '----.' => '9', '-----' => '0' }

# method to decode a char
def decode_char(string)
  @decoder_letters.fetch(string)
end

puts decode_char('.-')

# Method to decode a word
def decode_word(string)
  output = ''
  string
    .split
    .each do |i|
      output += decode_char(i)
  end
  return output

end

puts decode_word('-- -.--')

# method to decode a message
def decode_message string
  output = []
  string
    .split('   ')
    .each do |i|
      output.push(decode_word(i))
  end
  output.join(' ').gsub(/\s+/, " ")
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
