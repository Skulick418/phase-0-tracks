# PSUEDOCODE
# Create word game class. 
# Make it so the amount of guesses is equal to the length of the word plus three
	# Initialize the class. Word will be put in by user. Guess is equal to the .length of the word + 3. 
	# Make a letter guess variable that is equal to imput that will be put in 
	# Make a finished variable set to false

class Wordgame 
	attr_reader :guess_left 
	def initialize 
		puts "User one please pick a word. User two please look away."
		@word_choice = gets.chomp.downcase
		@letter_choice = " "
		@guess_left = @word_choice.length.to_i + 3 
	end 

	def guess
		guesses = []
		until @guess_left == 0
		puts "User two please guess a letter from the word User one selected." 
		@letter_choice = gets.chomp.downcase 
		guesses.each do |x|
			if @letter_choice == x 
				until @letter_choice != x  
			puts "Please pick a letter you haven't selected"
			@letter_choice = gets.chomp.downcase 
		end 
		end
		end 
		word_array = @word_choice.chars 
		if word_array.include?(@letter_choice) 
			puts true 
		else 
			puts false 
		end  
		guesses << @letter_choice 
		@guess_left -= 1 
	end 
	p guesses 
	end 
end 

word = Wordgame.new
word.guess 
