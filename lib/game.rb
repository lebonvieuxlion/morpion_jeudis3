require 'pry'
require 'show'
require 'player'
require 'board'


class Game #c'est mon controller

	def initialize

		@show = Show.new

	end


	def launch_game

		get_names = @show.create_players			#je récupère les noms entrés dans un array grâce à une méthode dans Show

		Player.new(get_names[0])					#je crée deux instances player à qui j'attribue en attribut obligatoire les prénoms rentrés
		Player.new(get_names[1])

		@array_of_boardcases = Board.new.launch_board		#crée les 9 cases du jeu de morpion grâce à l'init de la classe Board et l'init de la classe Boardcase

		@show.display_board(@array_of_boardcases)



	end




end #fin de classe

Binding.pry