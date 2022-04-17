class Game
	attr_reader :name,
							:cost,
							:national_drawing,
							:starting_amount

	def initialize(name, cost, national_drawing = false)
		@name = name
		@cost = cost
		@national_drawing = national_drawing
		@starting_amount = 0
	end

	def national_drawing?
		@national_drawing
	end
end
