class BoardCase
    attr_accessor :boardcase_content
    
	def initialize
		@boardcase_content = " "
    end
    
	def add_content(player)
		@boardcase_content = player.sign #on met le signe du joueur en cours dans l'array
	end
end