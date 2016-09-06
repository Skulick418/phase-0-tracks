# PSUEDOCODE
# Create word game class. 
# Make it so the amount of guesses is equal to the length of the word plus three
	# Initialize the class. Word will be put in by user. Guess is equal to the .length of the word + 3. 
	# Make a letter guess variable that is equal to imput that will be put in 
	# Make a finished variable set to false

class Wordgame 
	def initialize 
		puts "User one please pick a word. User two please look away."
		@word_choice = gets.chomp.downcase
		puts "User 2 please guess a letter out of the word User one selected."
		@letter_choice = gets.chomp.downcase
		@guess_left = @word_choice.length + 3 
	end 

	def guess
		word_array = @word_choice.chars 
		if word_array.include?(@letter_choice) 
			puts true 
		else 
			puts false 
		end 
	end 
end 

word = Wordgame.new
word.guess 