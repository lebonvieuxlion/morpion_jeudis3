require 'pry'

class Boardcase


	attr_accessor :position, :content

	def initialize(position, content)

		@position = position
		@content = content

	end



	def modify_case(board_cell, player)

		if player == "player_1"

			board_cell.content = "x"

		else

			board_cell.content = "o"

		end

	end







end #fin de classe


