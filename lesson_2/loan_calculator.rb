# pseudo
# get loan amount, apr, and loan duration from user
# convert apr and duration to monthly format
# calculate monthly payment from converted input

def valid_int?(int)
  int.to_i.to_s == int
end

def valid_float?(float)
  float.to_f.to_s == float
end

def monthly(loan, apr, duration)
  (loan * ((apr / 12) / (1 - (1 + (apr / 12))**(-(duration * 12))))).to_i
end

puts "Welcome to the loan calculator!"
puts "What's your name?"
name = gets.chomp
puts "Hi, #{name}!"
loan_amount = ''
apr = ''
duration = ''
go_again = true

while go_again
  loop do
    puts "Enter the loan amount:"
    loan_amount = gets.chomp
    if valid_int?(loan_amount)
      loan_amount = loan_amount.to_i
      break
    else
      puts "Invalid loan amount entered."
    end
  end
  loop do
    puts "Enter the APR (if the APR is 10%, enter 0.1):"
    apr = gets.chomp
    if valid_float?(apr)
      apr = apr.to_f
      break
    else
      puts "Invalid APR entered. Please enter a valid APR."
    end
  end
  loop do
    puts "Duration of the loan in years:"
    duration = gets.chomp
    if valid_int?(duration)
      duration = duration.to_i
      break
    else
      puts "Invalid duration entered."
    end
  end
  puts "Great okay now lets crunch those numbies"
  puts "Your monthly payment should be around:"
  puts monthly(loan_amount, apr, duration)
  puts "Would you like to calculate another loan?
  (for yes type 'y')
  (anything else will exit the program)"
  decision = gets.chomp
  go_again = false unless decision == 'y'
end

puts "Goodbye!!!"
