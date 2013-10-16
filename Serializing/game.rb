require "yaml"
class GameFile
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def read
   f=File.open(path)
   f.read
  end
  def write(content)
    File.open(@path,"wb") do |f|
      f.puts content
     end
  end
end

class Ogre
  attr_accessor :strength, :speed, :smell
  def initialize(strength, speed, smell)
    @strength = strength
    @speed = speed
    @smell = smell
  end
end

class Dragon
  attr_accessor :strength, :speed, :color
  def initialize(strength, speed, color)
    @strength = strength
    @speed = speed
    @color = color
  end
end

class Fairy
  attr_accessor :strength, :speed, :intelligence
  def initialize(intelligence)
    @strength = 1
    @speed = 42
    @intelligence = intelligence
  end
end

def save_game(characters)
  yaml = YAML::dump(characters)
  game_file = GameFile.new("#{characters.class}.yaml")
  game_file.write(yaml)
end

def load_game(game)
  game_file = GameFile.new("#{game}.yaml")
  yaml = game_file.read
  YAML::load(yaml)
  system("cat #{game}.yaml")
end

save_game(Ogre.new(10,15,"dirty"))
load_game("Ogre")
save_game(Dragon.new(20,15,"Blue"))
load_game("Dragon")
save_game(Fairy.new("Great"))
load_game("Fairy")
