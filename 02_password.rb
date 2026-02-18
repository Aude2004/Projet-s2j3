def signup
  print "Choisis un mot de passe : "
  gets.chomp
end

def login(stored_password)
  loop do
    print "Entre ton mot de passe : "
    attempt = gets.chomp
    if attempt == stored_password
      puts "Mot de passe correct !"
      break
    else
      puts "Mauvais mot de passe, réessaie."
    end
  end
end

def welcome_screen
  puts "Bienvenue dans l'espace top secret !"
  puts "Voici tes secrets : les messages WhatsApp de ton groupe : [contenu secret ici]."
end

def perform
  password = signup
  login(password)
  welcome_screen
end