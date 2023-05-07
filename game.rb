require './players'

class Game 

    @@player = 0

    def start_game(players)
        puts "---NEW TURN---"
        question = Questions.new
        puts "#{players[0].long}: #{question.question}"
        answer = $stdin.gets.chomp
        if answer.to_i == question.number1 + question.number2
            puts "#{players[0].long}: YES! You're correct!"
        else
            players[0].lose_points
            puts "#{players[0].long}: Seriously? No!"
        end

        if players[0].score == 0
            puts "#{players[1].long} wins with a score of #{players[1].final_score} vs #{players[0].long}: #{players[0].final_score}"
        else
            players.reverse!
            "#{players[1].short}: #{players[1].final_score} vs #{players[0].short}: #{players[0].final_score}"
            start_game(players)
        end
    end
end

