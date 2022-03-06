

OUTCOMES = { :rock => { :lizard => 'win', :scissors => 'win', :paper => 'lose', :spock => 'lose', :rock => 'draw'},
                  :scissors => { :lizard => 'win', :scissors => 'draw', :paper => 'win', :spock => 'lose', :rock => 'lose'},
                  :paper => { :lizard => 'lose', :scissors => 'lose', :paper => 'draw', :spock => 'win', :rock => 'win'},
                  :spock => { :lizard => 'lose', :scissors => 'win', :paper => 'lose', :spock => 'draw', :rock => 'win'},
                  :lizard => { :lizard => 'draw', :scissors => 'lose', :paper => 'win', :spock => 'win', :rock => 'lose'}
                } 

def win?(player_choice, computer_choice, hash)
  key = player_choice.to_sym
  value = computer_choice.to_sym
  hash[key][value]
end    
  
  
p win?('rock', 'lizard', OUTCOMES)


