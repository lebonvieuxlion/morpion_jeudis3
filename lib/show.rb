require 'pry'

class Show

	def create_players

		player_name = []

		puts "Entrez votre prénom chacun votre tour : "
		print ">"

		player_name[0] = gets.chomp

		puts "Bonjour #{player_name[0]}. Au joueur suivant de rentrer son nom :"
		print ">"


		player_name[1] = gets.chomp

		puts "Bonjour #{player_name[1]} et #{player_name[0]}. Vos deux prénoms ont bien été enregistré"



		return player_name

	end


end #fin de classe

