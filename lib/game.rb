require 'show'
require 'player'


class Game #c'est mon controller

	def initialize

		@show = Show.new

	end


	def launch_game

		get_names = @show.create_players			#je récupère les noms entrés dans un array grâce à une méthode dans Show

		Player.new(get_names[0])					#je crée deux instances player à qui j'attribue en attribut obligatoire les prénoms rentrés
		Player.new(get_names[1])					


	end




end #fin de classe