def say(msg)
  puts "*** #{msg} ***"
end

def check_for_numbers(user_number)
  while user_number.to_f == 0.0
  say("Oops! I didn't understand that. Try again with a non-zero number!")
  user_number = gets.chomp
  end
  user_number
end

say("Welcome to Calcutron2000. I can do wonders with two non-zero numbers! What operation can I perform for you today?")
say("Please select 'A' for add, 'S' for subtract, 'M' for multiply, or 'D' for divide.")
operator = gets.chomp.downcase

until ['a', 's', 'm', 'd'].include?(operator)
say("You'll need a Calcutron5000 for that! I'm only a simple calculator. Please enter a different option.")
operator = gets.chomp.downcase
end

operation = case operator
when 'a' then "add"
when 's' then "subtract"
when 'm' then "multiply"
when 'd' then "divide"
end
    
say("Great idea! Let's #{operation}!") 
say("What is the first number you'd like to #{operation}?")
num1 = gets.chomp
num1 = check_for_numbers(num1)
    
say("What is the second number you'd like to #{operation}?")
num2 = gets.chomp
num2 = check_for_numbers(num2)
    
answer = case operator
when 'a' then num1.to_f + num2.to_f
when 's' then num1.to_f - num2.to_f
when 'm' then num1.to_f * num2.to_f
when 'd' then num1.to_f / num2.to_f
end
    
say("When I #{operation} #{num1} and #{num2}, the result is #{answer}!")