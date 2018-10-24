class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    "Hey i'm running"
  end
end

user = User.new("John", "john@gmail.com")
puts user.run()
puts user.name
puts user.email
user.name = "Sam"
puts user.name
