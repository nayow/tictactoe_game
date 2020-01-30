class Show
    attr_accessor :tab

    def self.header
        @tab = ["","1","2","3","4","5","6","7","8","9"]
        system "clear"
        puts "","","","

        ███╗   ███╗ ██████╗ ██████╗ ██████╗ ██╗ ██████╗ ███╗   ██╗██╗
        ████╗ ████║██╔═══██╗██╔══██╗██╔══██╗██║██╔═══██╗████╗  ██║██║
        ██╔████╔██║██║   ██║██████╔╝██████╔╝██║██║   ██║██╔██╗ ██║██║
        ██║╚██╔╝██║██║   ██║██╔══██╗██╔═══╝ ██║██║   ██║██║╚██╗██║╚═╝
        ██║ ╚═╝ ██║╚██████╔╝██║  ██║██║     ██║╚██████╔╝██║ ╚████║██╗
        ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝
                                                                     
        
        ".colorize(:light_white),"","","_"*75
        puts "","",""
    end

    def self.empty_grid
        puts "","",""
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                  "+"1".colorize(:light_red)+"       |       "+"2".colorize(:light_red)+"       |       "+"3".colorize(:light_red)+"       ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "           -----------------------------------------------".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                  "+"4".colorize(:light_red)+"       |       "+"5".colorize(:light_red)+"       |       "+"6".colorize(:light_red)+"       ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "           -----------------------------------------------".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                  "+"7".colorize(:light_red)+"       |       "+"8".colorize(:light_red)+"       |       "+"9".colorize(:light_red)+"       ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "","",""
    end

    def self.grid(player, position)

        @tab[position] = player.sign

        puts "           ","",""
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                  "+@tab[1].to_s.colorize(:light_red)+"       |       "+@tab[2].to_s.colorize(:light_red)+"       |       "+@tab[3].to_s.colorize(:light_red)+"       ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "           -----------------------------------------------".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                  "+@tab[4].to_s.colorize(:light_red)+"       |       "+@tab[5].to_s.colorize(:light_red)+"       |       "+@tab[6].to_s.colorize(:light_red)+"       ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "           -----------------------------------------------".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                  "+@tab[7].to_s.colorize(:light_red)+"       |       "+@tab[8].to_s.colorize(:light_red)+"       |       "+@tab[9].to_s.colorize(:light_red)+"       ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "                          |               |               ".colorize(:light_white)
        puts "","",""

    end

end