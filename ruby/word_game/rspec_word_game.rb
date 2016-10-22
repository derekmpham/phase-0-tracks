require_relative "word_game"

describe WordGame do
	let(:game) {WordGame.new("hi")}

	it "stores the list items given on initialization" do
		expect(game.secret_word).to eq "hi"
		expect(game.guesses_left).to eq 4
		# expect(game.underscored_word).to eq "__"
	end


end