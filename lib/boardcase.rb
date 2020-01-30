class BoardCase
    attr_accessor :boardcase_content
    
	def initialize
		@boardcase_content = " "
    end
    
	def add_content(player)
		@boardcase_content = player.sign
	end
end