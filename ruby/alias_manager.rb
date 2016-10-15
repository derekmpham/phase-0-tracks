# GET REAL NAME FROM USER
puts "Please put your real first and last name, or put 'quit' to exit."
real_name = gets.chomp.to_s

# allow user to input multiple names by incorporating loop
while real_name != "quit"

# SWAP FIRST AND LAST NAME

# split string into array of words, reverse order list, and bring items together to get swapped first and last name
swapped_name = real_name.split(' ').reverse.join(' ').downcase


# CHANGE VOWELS IN NAME

def next_vowel(vowel_letter)
  vowels = "aeiou"
  #1. look at vowel and find current_location of vowel_letter
  current_location = vowels.index(vowel_letter)
  #2. add 1 to current_location of vowel_letter to get next_location
  next_location = 1 + current_location
  #3. go to next_location to get next vowel_letter
  vowels[next_location]
  #4. account for edge cases
  if next_location == vowels.length
    result = "a"
  else
    result = vowels[next_location]
  end
  result
end


# CHANGE CONSONANTS IN NAME

def next_consonant(consonant_letter)
  consonants = "bcdfghjklmnpqrstvwxyz"
  #1. look at consonant and find current_location of consonant_letter
  current_location = consonants.index(consonant_letter)
  #2. add 1 to current_location of consonant_letter to get next_location
  next_location = 1 + current_location
  #3. go to next_location to get next consonant_letter
  consonants[next_location]
  #4. account for edge cases
  if next_location == consonants.length
    result = "b"
  else
    result = consonants[next_location]
  end
  result
end


# SPLIT INTO LETTERS, DECIPHER IF VOWEL OR CONSONANT, AND INCORPORATE APPROPRIATE VOWEL/CONSONANT METHOD

# split swapped_name into letters
letters = swapped_name.split('')
# set up evaluation of each element (each of the now splitted letters)
letters.map! do |letter|
  # determine if vowel and incorporate vowel method
  if "aeiou".include?(letter)
    next_vowel(letter)
  # determine if consonant and incorporate consonant method
  elsif "bcdfghjklmnpqrstvwxyz".include?(letter)
    next_consonant(letter)
  # leave as is if neither vowel nor consonant
  else
    letter
  end
end

# consolidate elements in letters array to create shifted_name
shifted_name = letters.join('')
# split shifted_name into individual words to allow us to capitalize first letter of each word again
wordsplit_shifted_name = shifted_name.split(' ')
# evaluate each element (word) and capitalize first letter of each word
recapitalize_wordsplit_shifted_name = wordsplit_shifted_name.map(&:capitalize)
# consolidate capitalized words into final_secret_name
final_secret_name = recapitalize_wordsplit_shifted_name.join(' ')

# store final_secret_name in database array --> can only seem to store last alias name
alias_database = []
alias_database.push(final_secret_name)

p "Your fake name is #{final_secret_name}. Enter another first and last name, or put 'quit' to exit."
real_name = gets.chomp.to_s
# end "input multiple names" option loop
end

p alias_database