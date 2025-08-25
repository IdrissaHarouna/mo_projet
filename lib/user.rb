class User
  attr_accessor :email, :age

  # variable de classe pour stocker tous les utilisateurs
  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age

    # ajoute l'utilisateur créé à la liste
    @@all_users << self
  end

  # méthode d'instance pour afficher un utilisateur
  def info
    "Utilisateur : #{@email}, âge : #{@age} ans"
  end

  # méthode de classe pour récupérer tous les utilisateurs
  def self.all
    @@all_users
  end
end
