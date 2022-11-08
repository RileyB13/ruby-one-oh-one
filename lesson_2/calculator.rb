require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  a.to_f / b.to_f
end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def operation_to_message(oper)
  case oper
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~Method Break~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

a = ''
b = ''

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt('Hi #{name}')

loop do
  loop do
    prompt(MESSAGES['first_num'])
    a = gets.chomp
    if valid_number?(a)
      a = a.to_i
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end
  loop do
    prompt(MESSAGES['second_num'])
    b = gets.chomp
    if valid_number?(b)
      b = b.to_i
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end
  operator_prompt = <<-MSG
      What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
    MSG
  prompt(operator_prompt)
  operation = ''
  loop do
    operation = gets.chomp
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt(MESSAGES['choose_op'])
    end
  end
  prompt("#{operation_to_message(operation)} the two numbers...")
  result = case operation
           when "1"
             add(a, b)
           when "2"
             subtract(a, b)
           when "3"
             multiply(a, b)
           when "4"
             divide(a, b)
           end
  prompt(MESSAGES['answer'])
  prompt(result)
  prompt(MESSAGES['go_again'])
  reply = gets.chomp
  break unless reply.downcase.start_with?('y')
end

prompt(MESSAGES['thanks'])
