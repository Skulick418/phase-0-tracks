require_relative 'game'
describe game do
  let(:game) {Wordgame.new}

   it "stores the list items given on initialization" do
    expect(game.word_seletion).to eq ["do the dishes", "mow the lawn"]
  end