SELECT = ['rock', 'paper', 'scissors', 'spock', 'lizard']

def test_method
  prompt('test message')
end

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock')) ||
    (first == 'lizard' && (second == 'paper' || second == 'spock'))
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "You lost!"
  else
    "You tied!"
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{SELECT.join(', ')}")
    choice = gets.chomp

    if SELECT.include?(choice)
      break
    else
      prompt("Invalid selection")
    end
  end

  comp_choice = SELECT.sample
  prompt("You chose: #{choice}; Computer chose: #{comp_choice}")

  prompt(display_results(choice, comp_choice))

  prompt("Would you like to play again? ('Y'='Yes')")
  play_again = gets.chomp.upcase

  if play_again == 'Y'
    next
  else
    break
  end
end

prompt("Bye, thanks for playing!!!")
