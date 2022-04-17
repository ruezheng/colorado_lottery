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

	
end


# A contestant #can_register? if they are interested in the game, 18 years of age or older, and they are either a Colorado resident or this is a national game
