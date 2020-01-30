class Board
	attr_accessor :board_content
	def initialize
		@board_content = Array.new
		9.times do 
			@board_content << BoardCase.new # créé 9 objets de classe Boardcase
		end
	end
	def fill_case(player, position)
        board_content[position.to_i - 1].add_content(player) # on met le signe du joueur en cours dans l'array
    
    def content(x)
        return board_content[x-1].boardcase_content # affiche le contenu d'une case entre vide O ou X
    end

end