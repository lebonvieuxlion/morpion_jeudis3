require 'pry'
require_relative '../lib/boardcase'

class Board


	def initialize

	@array_of_boardcases = [
		Boardcase.new("A1", " "),
		Boardcase.new("A2", " "),
		Boardcase.new("A3", " "),

		Boardcase.new("B1", " "),
		Boardcase.new("B2", " "),
		Boardcase.new("B3", " "),

		Boardcase.new("C1", " "),
		Boardcase.new("C2", " "),
		Boardcase.new("C3", " ")]

	end


	def launch_board

		return @array_of_boardcases

	end



	def self.modify(array_of_boardcases, boardcase, player)							#je fais une méthode classe avec en paramètres l'array contenant mes cases et la case que je veux modifier



		array_of_boardcases.each do |board_cell|									#j'itère sur cet array où chaque board_cell est en fait une case de mon tableau

			if board_cell.position == boardcase     								#je ne modifie que si la l'attribut position de ma boardcase correspond à celui d'un élément de l'array     

				board_cell.modify_case(board_cell, player)



			end

		end 			


	end


	def self.check_victory(array)

		case 

			when @array_of_boardcases[0].content + array_of_boardcases[1].content + array_of_boardcases[2].content == "xxx" || "ooo"
				puts "c'est la victoire"

			else

				"Il va falloir encore se battre"

		end


	end





end #fin de classe

Binding.pry


