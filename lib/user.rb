class User
  attr_accessor :email, :age

 
  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age

  
    @@all_users << self
  end


  def info
    "Utilisateur : #{@email}, âge : #{@age} ans"
  end

 
  def self.all
    @@all_users
  end
end
