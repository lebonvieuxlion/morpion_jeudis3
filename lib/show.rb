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


	def display_board(array) 	#montre le board sur le terminal en début de partie et à chaque tour


		puts "VOICI LE BOARD :"
		puts "   1   2   3"
		puts "A (#{array[0].content}) (#{array[1].content}) (#{array[2].content})"

		puts "B (#{array[3].content}) (#{array[4].content}) (#{array[5].content})"
		
		puts "C (#{array[6].content}) (#{array[7].content}) (#{array[8].content})"
		puts ""


	end

	def ask_for_case #demande à chaque tour quel case l'utilisateur va choisir

		puts "Quel case veux-tu choisir ?"
		print ">" 
		board_case = gets.chomp

		return board_case

	end








end #fin de classe

=begin

		puts "VOICI LE BOARD :"
		puts ""
		puts "#{array[0].content} | #{array[1].content}| #{array[2].content}"
		puts "____________________|____________________|_____________________"
		puts "#{array[3].content} | #{array[4].content}|#{array[5].content}"
		puts "____________________|____________________|______________________"
		puts "#{array[6].content} | #{array[7].content}| #{array[8].content}"
		puts "                                                                "

=end