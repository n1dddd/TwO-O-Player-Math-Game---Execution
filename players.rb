class Player

    @@number_of_players = 0 #initialize class with 0 count of players

    attr_reader :short, :long, :score


    def initialize # use each instance, and the class variable to populate the player number
        @@number_of_players += 1
        @short = "P#{@@number_of_players}"
        @long = "Player#{@@number_of_players}"
        @score = 3
    end

    def lose_points
        self.score -= 1
    end
end

