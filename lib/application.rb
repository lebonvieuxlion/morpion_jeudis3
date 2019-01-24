require 'game'


class Application

	def initialize

		@game = Game.new

	end




	def perform

		puts "BIENVENUE AU JEU DU MORPION MOUSSAILLON"


		while true

		puts "Tu veux faire quoi BG ?"
	  puts "1. Je veux jouer au jeu"
	  puts "2. Je ne veux pas jouer au jeu."
	  print ">"

	  choice = gets.to_i

		  case choice

		  		when 1

		  			puts "Trop cool, jouons ensemble"
		  			@game.perform								#appelle une méthode de mon controller game.rb

		  		when 2

		  			puts "Triste histoire. A bientôt !"
		  			break

		  		else
		  			"Ce choix n'existe pas. Mercide réessayer"

		  end

	 	end

	end



end #fin de classe