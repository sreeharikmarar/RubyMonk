require 'yaml'
class Ogre
  def initialize(strength, speed)
    @strength = strength
    @speed = speed
  end
  
  # this is reminiscent of our old friend, CerealBox#from_s
  def self.deserialize(yaml_string)
    YAML::load(yaml_string)
  end
  
  # and this is a much-simplified version of our CerealBox#to_s
  def serialize
    YAML::dump(self)
  end
  
  # now we're free to define #to_s however we like!
  # ...which is great, because #to_s is for programmers to read, 
  # not computers or users
  def to_s
    "Ogre: [strength = #{@strength}, speed = #{@speed}]"
  end
end

wendigo = Ogre.new(47, 3)
yaml = wendigo.serialize
puts "The yaml looks like this:"
p yaml
puts "It's just a boring old string: #{yaml.class}"
puts "...and it's easy to change back: #{Ogre.deserialize(yaml)}"
puts

shrek = Ogre.new(62, 12)
fiona = Ogre.new(66, 37)
ogres = [shrek, fiona]
puts "We can even serialize arrays! They're just another object. #{ogres}"
  
