#WordGame Class
class WordGame

	attr_reader :secret_word, :guesses_left, :underscored_word, :guessed_letters, :win, :lose

	#get Player 1's input word
	def initialize(word)
		@secret_word = word
		@guesses_left = @secret_word.length*2
		@underscored_word = underscored(word)
		@guessed_letters = []
		@win = false
		@lose = false
	end

	#method for substituting every letter of input word with "_"
	def underscored(word)
		word.gsub(/[a-z]/, "_")
	end

	#method that takes letter guess from user and checks if @secret_word contains that letter
	def check_letter(letter)
		#if input guess letter is already in the array of past guessed letters, don't count against Player 2
		if @guessed_letters.include?(letter)
			p "Already guessed"
		#if @secret_word contains letter guess, change the @underscored_word characters based on corresponding locations in @secret_word
		elsif @secret_word.include?(letter)
			#performs iteration on each element while taking note/recording each element's position-->we are able to know position of each element by including .with_index method
			@secret_word.each_char.with_index do |char, index|
				# p char
				# p index
				if char == letter
					@underscored_word[index] = letter
				end
			end
			p @underscored_word
		else
			@guesses_left -= 1
			p @guesses_left
		end
		#add add input guess letter into array of letters that have already been guessed
		@guessed_letters << letter
		#win/lose status for Player 2
		#condition for when Player 2 wins
		if @underscored_word == @secret_word && @guesses_left > 0
			@win = true
			p @win
		#condition for when Player 2 loses
		elsif @underscored_word != @secret_word && @guesses_left == 0
			@lose = true
			p @lose
		#condition for when the game goes on
		else
			@win = false && @lose = false
			p @win
			p @lose
		end
	end


end

#win is when @underscored_word == @secret_word
#lose is when !win and @guesses_left == 0


#DRIVER CODE
game = WordGame.new("hello")
game.check_letter("l")
game.check_letter("o")
game.check_letter("h")
game.check_letter("e")



#USER INTERFACE

# #get Player 1's input word and initiate game
# p "Welcome to the Word-Guessing Game!"
# p "Player 1: Type in a word for Player 2 to guess"
# word = gets.chomp.to_s


# #get Player 2's input letter guess
# until
# p "Player 2: Guess a letter in Player 1's word. You have #{game.guesses_left} guesses remaining"
# letter = gets.chomp.to_s



