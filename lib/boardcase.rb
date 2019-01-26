require 'pry'

class Boardcase


	attr_accessor :position, :content

	@@content_array = []  


	def initialize(position, content) #création des deux attributs à la création de l'instance 

		@position = position
		@content = content
		@@content_array << content    #lié à une méthode non terminée


	end



	def modify_case(board_cell, player) #modifie le contenu de la case (utilisée dans Board)

		if player == "player_1"

			board_cell.content = "x"

		else

			board_cell.content = "o"

		end

	end


	def check_if_case_empty(boardcase)  #vérifie si la case choisie est vide ou non (utilisée dans Board)

		if boardcase.content == " "

			return true

		else
			return false

		end


	end


	def check_boardcase_content(boardcase)

		case

		when boardcase.content == "x"

			return "true_for_player_1"

		when boardcase.content == "o"

			return "true_for_player_2"

 		else

			return false

		end

	end





end #fin de classe


