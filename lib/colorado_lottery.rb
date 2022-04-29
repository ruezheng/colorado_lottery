class ColoradoLottery
	attr_reader :registered_contestants,
		:winners,
		:current_contestants

	def initialize
		@registered_contestants = {}
		@current_contestants = {}
 		@winners = []
	end

	def interested_and_18?(contestant, game)
		contestant.age >= 18 && contestant.game_interests.include?(game.name)
	end

	def can_register?(contestant, game)
		if interested_and_18?(contestant, game) && contestant.state_of_residence == 'CO'
			true
		elsif interested_and_18?(contestant, game) && game.national_drawing?
			true
		else
			false
		end
	end
end

# - We will only register contestants that `#can_register?`
# - `#eligible_contestants` is a list of all the contestants who have been registered to play a given game and that have more spending_money than the cost.
# - current_contestants are lists of contestant names who have been charged, organized by game.
