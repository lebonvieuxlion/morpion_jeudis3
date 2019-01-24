require 'pry'
require_relative '../lib/boardcase'

class Board

	def initialize

	@array_of_boardcases = [
		Boardcase.new("A1", ""),
		Boardcase.new("A2", ""),
		Boardcase.new("A3", ""),

		Boardcase.new("B1", ""),
		Boardcase.new("B2", ""),
		Boardcase.new("B3", ""),

		Boardcase.new("C1", ""),
		Boardcase.new("C2", ""),
		Boardcase.new("C3", "")]

	end


	def launch_board

		return @array_of_boardcases

	end



end #fin de classe