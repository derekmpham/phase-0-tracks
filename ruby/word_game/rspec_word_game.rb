require_relative "word_game"

describe WordGame do
	let(:game) {WordGame.new("hello")}

	it "stores the list items given on initialization" do
		expect(game.secret_word).to eq "hello"
		expect(game.guesses_left).to eq 10
		expect(game.underscored_word).to eq "_____"
		expect(game.guessed_letters).to eq []
		expect(game.win).to eq false
		expect(game.lose).to eq false
	end

	it "checks if input letter guess is part of the secret word" do
		game.check_letter("l")
		expect(game.underscored_word).to eq "__ll_"
		expect(game.guesses_left).to eq 10
		game.check_letter("l")
		expect(game.guesses_left).to eq 10
		game.check_letter("w")
		expect(game.guesses_left).to eq 9
		expect(game.win).to eq false
		expect(game.lose).to eq false
	end

	it "checks if Player 2 can win" do
		game.check_letter("h")
		game.check_letter("e")
		game.check_letter("l")
		game.check_letter("o")
		expect(game.win).to eq true
	end

	it "checks if Player 2 can lose" do
		game.check_letter("q")
		game.check_letter("w")
		game.check_letter("r")
		game.check_letter("t")
		game.check_letter("y")
		game.check_letter("u")
		game.check_letter("i")
		game.check_letter("p")
		game.check_letter("a")
		game.check_letter("s")
		expect(game.lose).to eq true
	end

end