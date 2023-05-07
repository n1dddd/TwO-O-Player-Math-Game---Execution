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
    end
end

