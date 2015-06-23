=begin
throw error if they choose an invalid operation
convert all num strings to floats to do more complex operations
throw error if they don't enter a number
=end

def prompt(msg)
  puts "*** #{msg} ***"
end

prompt("Welcome to Calcutron2000. I can do wonders with two non-zero numbers! What operation can I perform for you today? Please select 'A' for add, 'S' for subtract, 'M' for multiply, or 'D' for divide.")
operator = gets.chomp.downcase

case operator
  when 'a' then do_something = "add"
  when 's' then do_something = "subtract"
  when 'm' then do_something = "multiply"
  when 'd' then do_something = "divide"
  else 
    raise ArgumentError, "Invalid input! You'll need a Calcutron3000 for that operation!"
end
  
prompt("Great idea! Let's #{do_something}! What is the first number you'd like to #{do_something}?")
  num1 = gets.chomp
    if num1.to_f == 0.0
      prompt("Try again with a non-zero number!")
      num1 = gets.chomp
    end
    
prompt("What is the second number you'd like to #{do_something}?")
  num2 = gets.chomp
    if num2.to_f == 0.0
      prompt("Try again with a non-zero number!")
      num2 = gets.chomp
    end
    
case operator
  when 'a' then answer = num1.to_f + num2.to_f
  when 's' then answer = num1.to_f - num2.to_f
  when 'm' then answer = num1.to_f * num2.to_f
  when 'd' then answer = num1.to_f / num2.to_f
end
    
prompt("When I #{do_something} #{num1} and #{num2}, the result is #{answer}!")