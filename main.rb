require './players'
require './game'
require './questions'

player1 = Player.new #Create new instance of Player
player2 = Player.new
players = [player1, player2] #create array and populate with players

game = Game.new
game.start_game(players)











