class Team
attr_accessor :coach
attr_reader :name, :players, :points
def initialize(name, players, coach)
  @name = name
  @players = players
  @coach = coach
  @points = 0
end

def new_player(player)
  @players.push(player)
end

def check_player(player)
  return @players.include?(player)
end

def add_points(result)
  @points += 1 if (result == :draw)
  @points += 3 if (result == :win)
end

end
