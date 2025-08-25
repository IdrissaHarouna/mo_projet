require_relative 'lib/user'
require_relative 'lib/event'

# ---- Création des utilisateurs ----
julie = User.new("julie@email.com", 32)
jean  = User.new("jean@yahoo.fr", 28)

# ---- Affichage de tous les utilisateurs ----
puts "Liste des utilisateurs"
User.all.each do |user|
  puts user.info
end

# ---- Création d'un événement ----
party = Event.new("Masterclasse", "30/08/2025 16:00", 3) # titre, date, durée
party.add_participant(julie)
party.add_participant(jean)

# ---- Affichage de l'événement ----
puts "\nDétails de l'événement"
puts party.to_s
puts "L'événement est passé ? #{party.past?}"
puts "L'événement est prévu bientôt ? #{party.soon?}"
