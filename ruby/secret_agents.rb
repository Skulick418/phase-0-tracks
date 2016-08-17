=begin

Code by Sam Kulick and Matt Galloway 8/4/2017

ENCRYPT METHOD takes a string as input
  Store string length as variable stringlength
    LOOP from i=0 to stringlength
      IF character = Z 
        Change character to A
        increment i
      Else
        Change character at index i to next character
        increment i 

DECRYPT METHOD takes string (word) as input
   Set variable ALPHABET with alphabet as a string
    Store WORD length as variable stringlength
    LOOP from i=0 to stringlength
      Find index of character in word in alphabet
      Add character at -1 index in alphabet to new string 
      increment i

DRIVER CODE
Ask user "Would your like to encrypt or decrypt a password?"
  IF user answers encrypt
    Get password string from user
    Run encrypt method on password and print results
  Elsif user answers decrypt
    Get password string from user
    Run decrypt method on password and print results
  Else
    Ask again

=end

def encrypt(string_in)
  string_in_length = string_in.length
  i = 0
  string_out = ""
  while i < string_in.length
    if string_in[i] == "z"
      string_out += "a"
      i += 1
    else
      string_out += string_in[i].next
      i += 1
    end
  end
  string_out
end

def decrypt(string_in)
  string_in_length = string_in.length
  i = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  string_out = ""
  while i < string_in.length
    cipher = alphabet.index(string_in[i]) - 1
    string_out += alphabet[cipher]
    i += 1
  end
  string_out
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")
# puts decrypt(encrypt("swordfish"))

loop do
  puts "Would you like to encrypt or decrypt a password today?"
  password_question = gets.chomp
  if password_question.downcase == "encrypt"
    puts "Please enter the password to encrypt."
    password = gets.chomp
    puts encrypt(password)
    break
  elsif password_question.downcase == "decrypt"
    puts "Please enter the password to decrypt."
    password = gets.chomp
    puts decrypt(password)
    break
  else
    puts "Please enter encrypt or decrypt only. Ctrl+c to exit."
  end
end