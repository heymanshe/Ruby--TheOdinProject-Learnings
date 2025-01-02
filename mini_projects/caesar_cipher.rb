def caesar_cipher(message, shift)
  alphabet_length = 26
  shift = shift % alphabet_length


  result = message.chars.map do |char|
    if char.match?(/[a-zA-Z]/) 
      base = char.ord < 91 ? "A".ord : "a".ord 
      ((char.ord - base + shift) % alphabet_length + base).chr 
    else
      char
    end
  end

  result.join("")
end


puts "Enter the message:"
message = gets.chomp
puts "Enter the shift value:"
shift = gets.to_i

encrypted_message = caesar_cipher(message, shift)
puts "Encrypted Message: #{encrypted_message}"