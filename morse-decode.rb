def decode_morse_code(str)
  chars_to_morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '   ' => ' ', ' ' => ''
  }

  result = ''
  str = str.split(/   /)
  str.each do |word|
    word.split(/ /).each { |char| result += chars_to_morse[char] }
    result += ' '
  end
  result
end

puts decode_morse_code('-- -.--   -. .- -- .')
# => MY NAME

puts decode_morse_code('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# => A BOX FULL OF RUBIES
