module Destructable
  def destroy(object)
    puts "I will destroy the object"
  end
end

class User
  include Destructable

  def initialize(name)
    @name = name
  end
end

user = User.new("Johnsy")
user.destroy(self)
