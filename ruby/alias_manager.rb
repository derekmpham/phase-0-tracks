# GET REAL NAME FROM USER
puts "Please put your real first and last name"
real_name = gets.chomp.to_s


# SWAP FIRST AND LAST NAME

# split string into array of words, reverse order list, and bring items together to get swapped first and last name
swapped_name = real_name.split(' ').reverse.join(' ').downcase


# SPLIT INTO LETTERS AND THEN DETERMINE IF VOWEL OR CONSONANT

# split swapped_name into letters
letters = swapped_name.split('')
vowel_letter = letters[]
p vowel_letter



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





#Remainder of Challenge

#1. complete next_vowel
#2. complete next consonant
#3. iterate through the original word and for each letter determine if it is a vowel or consonant (may have to account for downcase / reverse / etc.
#4. call the apporpriate next method for the letter and add that to a result
#5. display reuslt