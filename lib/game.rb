class Game
    attr_accessor :board, :player1, :player2, :players_array, :turn_count, :player_turn, :win, :position_chosen

    def initialize
        @board = Board.new
        @turn_count = 0
        @win = 0
        Show.header
    end

    def get_players_names
        print "           Nom du joueur 1 ? "
        name = gets.chomp
        print "           Choisis ton signe (O/X) : "
        sign = gets.chomp
        @player1 = Player.new(name, sign)

        print "","           Nom du joueur 2 ? "
        name = gets.chomp
        print "           Choisis ton signe (O/X) : "
        sign = gets.chomp
        @player2 = Player.new(name, sign)

        @players_array = [player1, player2]
        Show.empty_grid
    end

    def play_turn
        @player_turn = players_array[turn_count%2] # alterne entre les index 0 et 1 pour avoir les player 1 et 2 respectivement
        puts "           Au tour de #{player_turn.name} de jouer un #{player_turn.sign}"
        print "           Quelle case choisis-tu ? "
        @position_chosen = gets.chomp.to_i
        while board.content(position_chosen) != " "
            print "           Choisis un numéro de case libre! "
            @position_chosen = gets.chomp.to_i
        end
        @board.fill_case(player_turn, position_chosen)
        @turn_count += 1
        Show.grid(player_turn, position_chosen)
    end

    def board_check
        rows = [[1,2,3],[4,5,6],[7,8,9]]
        cols = [[1,4,7],[2,5,8],[3,6,9]]
        selected_row = (@position_chosen.to_i-1)/3+1 # ligne correspondante à la case choisie (1,2 ou 3)
        selected_col = @position_chosen.to_i-3*(selected_row-1) # colonne correspondante à la case choisie (1,2 ou 3)

        if turn_count >= 3 #inutile de verifier avant
            if (board.content(1) != " ") && (board.content(1)==board.content(5)) && (board.content(1)==board.content(9)) then @win=1
            elsif (board.content(3) != " ") && (board.content(3)==board.content(5)) && (board.content(3)==board.content(7)) then @win=1
            elsif (board.content(rows[selected_row-1][0]) != " ") && (board.content(rows[selected_row-1][0])==board.content(rows[selected_row-1][1])) && (board.content(rows[selected_row-1][0])==board.content(rows[selected_row-1][2])) then @win=1 
            elsif (board.content(cols[selected_col-1][0]) != " ") && (board.content(cols[selected_col-1][0])==board.content(cols[selected_col-1][1])) && (board.content(cols[selected_col-1][0])==board.content(cols[selected_col-1][2])) then @win=1
            end
        end
        # Ci-dessus les deux premiers ifs testent les deux diagonales sur le modèle case1 = case5 = case9 != 0
        # les deux suivants testent respectivement la ligne et la colonne correspondantes toutes les deux à la 
        # case choisie (ligne 2 et colonne 3 pour la case 6 par ex), en checkant l'égalité de la ligne ou de la colonne.
        # Inutile de tester les autres car seules celles-ci ont pu être modifiées par le choix de case
    end

    def is_over?
        turn_count >= 9 || win==1 ? true : false
    end

    def finish
        if win==1
            puts "#".colorize(:light_red)*75,""
            puts "                      #{player_turn.name} est le grand gagnant!".colorize(:light_white)
            puts "","#".colorize(:light_red)*75
        else
            puts "#".colorize(:light_red)*75,""
            puts "                                    Match nul!".colorize(:light_white)
            puts "","#".colorize(:light_red)*75
        end
    end

    def replay?
        puts "","",""
        print "           Rejouer? (oui/non) : "
        gets.chomp == "oui" ? true : false
    end

end