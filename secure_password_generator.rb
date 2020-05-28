def randomize_random( input_collection_length )
  random_index = nil
  rand(100).times do |step|
    random_index = rand( input_collection_length )
  end
  random_index
end

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
  subset_index = randomize_random( CHARACTER_SOURCE_SET.length )

  # Randmonly determine which index to use from that source
  subset_character_index = randomize_random( CHARACTER_SOURCE_SET[subset_index].length )

  # Grab the charcacter from the subset and append
  secure_password << CHARACTER_SOURCE_SET[subset_index][subset_character_index]
end

puts "Secure Password: #{secure_password}"