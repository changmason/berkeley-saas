# saas-class hw1 - part 2

# (a)
STRATEGIES = ["R", "P", "S"]

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  
  p1, p2 = game[0], game[1]
  raise NoSuchStrategyError unless STRATEGIES.include?(p1[1])
  raise NoSuchStrategyError unless STRATEGIES.include?(p2[1])
  
  if (p1[1] == "R" && p2[1] == "P") || (p1[1] == "P" && p2[1] == "S") || (p1[1] == "S" && p2[1] == "R")
    winner = p2
  else
    winner = p1
  end

  winner
end

# (b)
def rps_tournament_winner(games)
  if games[0][1].is_a?(String)
    return rps_game_winner(games)
  else
    w1 = rps_tournament_winner(games[0])
    w2 = rps_tournament_winner(games[1]) 
    return rps_tournament_winner([w1, w2])
  end
end
