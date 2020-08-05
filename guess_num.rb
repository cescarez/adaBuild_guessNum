#Author: Christabel Escarez
#Last updated: August 4, 2020
#Ada Developer's Academy C14
#Ada Build: Section 3 Assessment: question  1, "Number Guessing Game"


#Global var
$lower_limit = 0
$upper_limit = 1000

#Functions
def get_guess(guess)
  puts "Guess a number between #{$lower_limit} and #{$upper_limit - 1}: "
  guess = gets.chomp
  while ((guess.to_i == 0 && guess.to_s != "0") || (guess.to_i < 0) || (guess.to_i >= 1000))
    puts "Invalid input. Please re-enter a number between #{$lower_limit} and #{$upper_limit - 1}:"
    guess = gets.chomp
  end
  return guess.to_i
end

#MAIN
secret_num = rand($lower_limit...$upper_limit)
guess = get_guess(guess)
while guess != secret_num
  if guess < secret_num
    puts "You need to guess higher!"
  elsif guess > secret_num
    puts "You need to guess lower!"
  else
    puts "Error. Goodbye,"
    exit
  end
  guess = get_guess(guess)
end
puts "You got it! I'm so proud of you!"
