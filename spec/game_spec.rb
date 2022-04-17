require "rspec"
require "./lib/contestant"
require "./lib/game"

describe Game do
	let(:pick_4) { Game.new('Pick 4', 2) }
	let(:mega_millions) { Game.new('Mega Millions', 5, true) }
	let(:alexander) { Contestant.new({first_name: 'Alexander',
                                    last_name: 'Aigiades',
                                    age: 28,
                                    state_of_residence: 'CO',
                                    spending_money: 10}) }

	it "exists" do
		expect(pick_4).to be_a Game
		expect(mega_millions).to be_a Game
	end

	it "has attributes" do
		expect(mega_millions.name).to eq "Mega Millions"
		expect(mega_millions.cost).to eq 5
		expect(mega_millions.national_drawing?).to eq true
		expect(pick_4.national_drawing?).to eq false
	end
end
