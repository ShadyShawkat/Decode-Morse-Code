chars_to_morse = { 
  ".-"=>"A", "-..."=>"B", "-.-."=>"C", "-.."=>"D", "."=>"E", "..-."=>"F",
  "--."=>"G", "...."=>"H", ".."=>"I", ".---"=>"J", "-.-"=>"K", ".-.."=>"L",
  "--"=>"M", "-."=>"N", "---"=>"O", ".--."=>"P", "--.-"=>"Q", ".-."=>"R",
  "..."=>"S", "-"=>"T", "..-"=>"U", "...-"=>"V", ".--"=>"W", "-..-"=>"X",
  "-.--"=>"Y", "--.."=>"Z", "   "=>" ", " "=>""
}

def decode_morse_code(str)
  result = ''
  str = str.split(/   /)
  str.each { |word|
    word.split(/ /).each{ |char| result += chars_to_morse[char] }
    result += ' '
  }
  return result
end
