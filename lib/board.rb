require 'pry'
require_relative '../lib/boardcase'

class Board


	def initialize											#initiation d'un array de 9 instances de cases pour simuler le board du morpion.
															#Chacune possède une position et un contenu qui est vide à l'initiation
	@array_of_boardcases = [
		@a1 = Boardcase.new("A1", " "),
		@a2 = Boardcase.new("A2", " "),
		@a3 = Boardcase.new("A3", " "),

		@b1 = Boardcase.new("B1", " "),
		@b2 = Boardcase.new("B2", " "),
		@b3 = Boardcase.new("B3", " "),

		@c1 = Boardcase.new("C1", " "),
		@c2 = Boardcase.new("C2", " "),
		@c3 = Boardcase.new("C3", " ")]

	end


	def launch_board										#quand on lance le jeu, on renvoie l'array avec les cases à la classe Game

		return @array_of_boardcases

	end



	def self.modify(array_of_boardcases, boardcase, player)							#je fais une méthode classe avec en paramètres l'array contenant mes cases et la case que je veux modifier



		array_of_boardcases.each do |board_cell|									#j'itère sur cet array où chaque board_cell est en fait une case de mon tableau

			if board_cell.position == boardcase      								#je ne modifie que si la l'attribut position de ma boardcase correspond à celui d'un élément de l'array     

				if board_cell.check_if_case_empty(board_cell) == true				#deuxième condition : je modifie si la cellule est vide

				board_cell.modify_case(board_cell, player)

				else 

					puts " Désolé la case est prise. Ton tour est sauté"

				end



			end

			

		end 			


	end


	def self.check_null(board)

		if board.all? {|boardcase| boardcase.check_if_case_empty(boardcase) == false} == true  #vérifie que toutes les cases dans l'array n'ont pas un contenu vide

			return false


		else 

			return true

		end

	end



	def self.check_board_victory(array) #définition des conditios de victoire sur le board

		case

#-------------------------------------------------JOUEUR 1---------------------------------------------------------------------------------------

#LIGNES


			when array[0..2].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_1"} == true

				puts "Victoire ligne A"

				return true


			when array[3..5].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_1"} == true

				puts "Victoire ligne B"

				return true


			when array[6..8].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_1"} == true

				puts "Victoire ligne C"

				return true


#COLONNES

			when [array[0], array[3], array[6]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_1"} == true

				puts "Victoire colonne 1"

				return true


			when [array[1], array[4], array[7]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_1"} == true

				puts "Victoire colonne 2"

				return true


			when [array[2], array[5], array[8]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_1"} == true

				puts "Victoire colonne 3"

				return true


#DIAGONALES

			when [array[0], array[4], array[8]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_1"} == true

				puts "Victoire diagonale"

				return true

			when [array[2], array[4], array[6]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_1"} == true

				puts "Victoire diagonale"

				return true




#-------------------------------------------------JOUEUR 2---------------------------------------------------------------------------------------

#LIGNES

			when array[0..2].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_2"} == true

				puts "Victoire ligne A"

				return true

			when array[3..5].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_2"} == true

				puts "Victoire ligne B"

				return true


			when array[6..8].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_2"} == true

				puts "Victoire ligne C"

				return true


#COLONNES

			when [array[0], array[3], array[6]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_2"} == true

				puts "Victoire colonne 1"

				return true


			when [array[1], array[4], array[7]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_2"} == true

				puts "Victoire colonne 2"

				return true


			when [array[2], array[5], array[8]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_2"} == true

				puts "Victoire colonne 3"

				return true


#DIAGONALES

			when [array[0], array[4], array[8]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_2"} == true

				puts "Victoire diagonale"

				return true


			when [array[2], array[4], array[6]].all? {|cell| cell.check_boardcase_content(cell) == "true_for_player_2"} == true

				puts "Victoire diagonale"

				return true
				

			else

					puts "On continue"
		end

	end








end #fin de classe

Binding.pry


