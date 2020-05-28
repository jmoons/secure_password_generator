CHARACTER_SOURCE_SET = [
  ("a".."z").to_a,
  ("A".."Z").to_a,
  ("0".."9").to_a,
  [ "!", "#", "$", "%", "&", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "@", "[", "]", "^", "_", "`", "{", "|", "}", "~" ]
]

length_of_password = ARGV[0].to_i
secure_password    = ""

(0 ... length_of_password).each do | step |
  # Randomly Determine which subset to use
  subset_index = rand( CHARACTER_SOURCE_SET.length )

  # Randmonly determine which index to use from that source
  subset_character_index = rand( CHARACTER_SOURCE_SET[subset_index].length )

  # Grab the charcacter from the subset and append
  secure_password << CHARACTER_SOURCE_SET[subset_index][subset_character_index]
end

puts "Secure Password: #{secure_password}"