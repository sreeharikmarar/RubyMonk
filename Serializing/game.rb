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
  game_file = GameFile.new("/home/prescience/SREEHARI_DATA/Ruby_practices/mygame/saved.yaml")
  game_file.write(yaml)
end

def load_game
  game_file = GameFile.new("/home/prescience/SREEHARI_DATA/Ruby_practices/mygame/saved.yaml")
  yaml = game_file.read
  YAML::load(yaml)
end

save_game(Ogre.new(10,15,"dirty"))
p load_game.smell
save_game(Dragon.new(20,15,"Blue"))
p load_game.color
save_game(Fairy.new("Great"))
p load_game.intelligence

