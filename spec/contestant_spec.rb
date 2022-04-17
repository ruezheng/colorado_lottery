require "rspec"
require "./lib/contestant"
require "./lib/game"

describe Contestant do
	let(:alexander) { Contestant.new({first_name: 'Alexander',
                                    last_name: 'Aigiades',
                                    age: 28,
                                    state_of_residence: 'CO',
                                    spending_money: 10} )}

		it "exists" do
			expect(alexander).to be_a Contestant
		end

		it "has attributes" do
			expect(alexander.full_name).to eq "Alexander Aigiades"
			expect(alexander.spending_money).to eq 10
			expect(alexander.out_of_state?).to eq false
		end
end
