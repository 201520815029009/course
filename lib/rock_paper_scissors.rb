class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    if !(player1[1]=~/[RPS]/&&player2[1]=~/[RPS]/)
	    raise RockPaperScissors::NoSuchStrategyError,"Strategy must be one of R,P,S"
    elsif player1[1]=='P'
	    if player2[1]=='P'
		    return player1
	    elsif player2[1]=='R'
		    return player1
	    elsif player2[1]=='S'
		    return player2
	    end
    elsif player1[1]=='R'
	     if player2[1]=='P'
		    return player2
	    elsif player2[1]=='R'
		    return player1
	    elsif player2[1]=='S'
		    return player1
	    end
     elsif player1[1]=='S'
	     if player2[1]=='P'
		    return player1
	    elsif player2[1]=='R'
		    return player2
	    elsif player2[1]=='S'
		    return player1
	    end
    end
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    if tournament[0][0].is_a? String
    	return self.winner(tournament[0],tournament[1])
    end
    return self.winner(self.tournament_winner(tournament[0]),self.tournament_winner(tournament[1]))
  end

end
