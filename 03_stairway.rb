def play_game
  position = 0
  while position < 10
    roll = rand(1..6)
    puts "Tu as lancé le dé : #{roll}"
    case roll
    when 5, 6
      position += 1
      position = 10 if position > 10
      puts "Tu montes d'une marche ! Marche actuelle : #{position}"
    when 1
      position -= 1 if position > 0
      puts "Tu descends d'une marche ! Marche actuelle : #{position}"
    else
      puts "Rien ne se passe, tu restes à la marche #{position}"
    end
  end
  puts "Félicitations ! Tu as atteint la 10ème marche ! 🎉"
end

def average_finish_time(simulations = 100)
  total_turns = 0
  simulations.times do
    position = 0
    turns = 0
    while position < 10
      roll = rand(1..6)
      case roll
      when 5, 6
        position += 1
      when 1
        position -= 1 if position > 0
      end
      turns += 1
    end
    total_turns += turns
  end
  avg = total_turns.to_f / simulations
  puts "Nombre moyen de tours pour atteindre la 10ème marche : #{avg.round(2)}"
end

def perform
  play_game
  average_finish_time(100)
end