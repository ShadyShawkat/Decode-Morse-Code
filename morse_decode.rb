def decode_char(char)
  chars_to_morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '   ' => ' ', ' ' => ''
  }
  chars_to_morse[char]
end

def decode_word(word)
  final_word = ''
  word.split(/ /).each do |char|
    final_word += decode_char(char)
  end
  final_word
end

def decode_morse_code(str)
  final_phrase = ''
  str = str.split(/   /)
  str.each do |word|
    final_phrase += decode_word(word)
    final_phrase += ' '
  end
  final_phrase
end

puts decode_morse_code('-- -.--   -. .- -- .')
# => MY NAME

puts decode_morse_code('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# => A BOX FULL OF RUBIES
