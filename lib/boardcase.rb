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


	def check_if_case_empty(board_cell)  #vérifie si la case choisie est vide ou non (utilisée dans Board)

		if board_cell.content == " "

			return true

		else
			return false

		end


	end

	def self.check_victory		#méthode non terminée

		case 
			when @@content_array[0..2].join("") == "xxx"

				puts "Bravo vous avez gagné"

			when @@content_array[3..5].join("") == "xxx"

				puts "Bravo vous avez gagné"

			when @@content_array[6..8].join("") == "xxx"

				puts "Bravo vous avez gagné"


			else
				puts "Tu dois encore essayer"

		end
	end




Binding.pry



end #fin de classe


