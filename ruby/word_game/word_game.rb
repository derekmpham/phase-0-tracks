#WordGame Class
class WordGame

	attr_reader :secret_word, :guesses_left, :underscored_word

	#get Player 1's input word
	def initialize(word)
		@secret_word = word
		@guesses_left = @secret_word.length*2
		#@underscored_word = underscored(word)
	end


	# def check_letter(letter)


end




#DRIVER CODE
#p game.underscored_word



#USER INTERFACE (AND DRIVER CODE)

#get Player 1's input word and initiate game
p "Welcome to the Word-Guessing Game!"
p "Player 1: Type in a word for Player 2 to guess"
word = gets.chomp.to_s
game = WordGame.new(word)

p game #-->driver code
p game.secret_word #-->driver code
p game.guesses_left#-->driver code