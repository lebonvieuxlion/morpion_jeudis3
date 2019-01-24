require 'pry'
require 'show'
require 'player'
require 'board'


class Game #c'est mon controller

	def initialize

		@show = Show.new

	end


	def perform

		launch_game
		play_game

	end




	def launch_game

		get_names = @show.create_players					#je récupère les noms entrés dans un array grâce à une méthode dans Show

		@player_1 = Player.new(get_names[0], 0)					#je crée deux instances player à qui j'attribue en attribut obligatoire les prénoms rentrés
		@player_2 = Player.new(get_names[1], 0)

		@array_of_boardcases = Board.new.launch_board		#crée les 9 cases du jeu de morpion grâce à l'init de la classe Board et l'init de la classe Boardcase

		@show.display_board(@array_of_boardcases)			#j'affiche le tableau récupéré dans la ligne plus haut

	end




	
	def play_game

		9.times do                                         

			unless @player_1.round_number > @player_2.round_number

				puts "#{@player_1.name} joue"

				boardcase = @show.ask_for_case								#demande la case que l'on veut modifier via la classe Show

				Board.modify(@array_of_boardcases, boardcase, "player_1")	#modifie le board uniquement pour le player_1 à travers la classe Board puis la classe Boardcase 

				@show.display_board(@array_of_boardcases)					#affiche le tableau avec la classe show

				@player_1.pass_round 										#permet d'ajouter 1 à l'attribut nombre de tour de player_1 (classe Player)


			else 

				puts "#{@player_2.name} joue"

				boardcase = @show.ask_for_case					

				Board.modify(@array_of_boardcases, boardcase, "player_2")

				@show.display_board(@array_of_boardcases)

				@player_2.pass_round


			end

		end




		puts "Fin du jeu merci"							#sera mis dans une méthode end_game?

	end




end #fin de classe

Binding.pry