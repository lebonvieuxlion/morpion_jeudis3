require 'pry'

class Player

	attr_reader :name, :round_number

	def initialize(name_entered, round_number)

		@name = name_entered
		@round_number = round_number

	end


	def pass_round

		@round_number = @round_number + 1

		return @round_number

	end



end #fin de classe

Binding.pry
