def half_pyramid
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
  n = gets.to_i
  (1..n).each do |i|
    puts "#" * i
  end
end

def full_pyramid
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
  n = gets.to_i
  puts "Voici la pyramide :"
  (1..n).each do |i|
    puts " " * (n - i) + "#" * (2 * i - 1)
  end
end

def wtf_pyramid
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisis un nombre impair) "
  n = gets.to_i

  if n.even?
    puts "Erreur : tu dois choisir un nombre impair !"
    return
  end

  puts "Voici la pyramide :"

  # Partie ascendante
  (1..(n/2 + 1)).each do |i|
    puts " " * ((n/2 + 1) - i) + "#" * (2*i - 1)
  end

  # Partie descendante
  ((n/2).downto(1)).each do |i|
    puts " " * ((n/2 + 1) - i) + "#" * (2*i - 1)
  end
end

def perform
  half_pyramid
  full_pyramid
  wtf_pyramid
end
perform