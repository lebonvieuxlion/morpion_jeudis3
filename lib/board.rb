require 'pry'
require_relative '../lib/boardcase'

class Board


	def initialize											#initiation d'un array de 9 instances de cases pour simuler le board du morpion.
															#Chacune possède une position et un contenu qui est vide à l'initiation
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





end #fin de classe

Binding.pry


