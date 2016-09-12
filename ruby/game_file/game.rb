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
		@guess_left = @word_choice.length.to_i + rand(3) 
		@underscores = "_" * @word_choice.length
		@underscore_display = @underscores.split
	end
	


	def guess
		guesses = []
		correct_guesses = []
		until @guess_left == -1
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
		puts "You have #{@guess_left} guesses left"


		if word_array.include?(@letter_choice)
			
			
			
			
			correct_guesses << @letter_choice
			guesses << @letter_choice
		
		else 
			puts "Incorrect guess" 
			guesses << @letter_choice 
		end  
		
		if correct_guesses.join.sum == word_array.join.sum
			puts "You win!!!"
			break
		end 
		
	
		
		@guess_left -= 1 
		if @guess_left == 1 
			puts "You have one guess left! Make it count!"
		elsif @guess_left == 0 
			puts "You lose!"
			break 
		end 
		
	end 
	
	end 
end 

word = Wordgame.new

word.guess 


# I had a very hard time with this assigmeng and was not able to finish it in time. 



# class Wordgame
# 	attr_reader :guesses_left, :win

# 	def initialize(word)
# 		@word_choice = word.downcase 
# 		@guesses_left = word.length 
# 		@underscores = "_" * word.length
# 		@display = @underscores.split
# 	end 

# 	def update_display(letter_index)
# 		@display[letter_index] = @word_choice[letter_index]
# 		@word_choice[letter_index] = "_"
# 	end 

# 	def update_count(letter_guess)
# 		unless @display.include?(letter_guess)
# 			@guesses_left -= 1 
# 		end 
# 	end 

# 	def check(letter_guess)
# 		while @word_choice.include?(letter_guess)
# 			index = @word_choice.index(letter_guess)
# 			update_display(index)
# 		end 
# 	end 

# 	def display 
# 		@underscores = ""
# 		@display.each {|x| @underscores += x+" "}
# 		@underscores
# 	end 

# 	def check_for_end
# 		if @guesses_left == 0 
# 			@win = false 
# 			true 
# 		elsif @word_choice == ("_"*@word_choice.length)
# 			@win = true
# 			true 
# 		else 
# 			false
# 		end
# 	end
# end 

# puts "Player one please pick a word that player two will guess. No symbols. Player two looks away"
# word = gets.chomp.downcase 

# new_game = Wordgame.new(word)

# while !new_game.check_for_end 
# 	# puts "#{guesses_left} guesses left"
	 

# 	puts "Please guess a letter from player one's word Player two"
# 	puts new_game.display
# 	player_2_guess = gets.chomp.downcase

# 	new_game.update_count(player_2_guess)
# 	new_game.check(player_2_guess)
# end

# if @win == true 
# 	puts "You win!!!!"
# else
# 	puts "You lose :("
# end 



# PSUEDOCODE
# Create word game class. 
# Make it so the amount of guesses is equal to the length of the word plus three
	# Initialize the class. Word will be put in by user. Guess is equal to the .length of the word + 3. 
	# Make a letter guess variable that is equal to imput that will be put in 
	# Make a finished variable set to false

# class Wordgame 
# 	attr_reader :guess_left 
# 	def initialize 
# 		puts "User one please pick a word. User two please look away."
# 		@word_choice = gets.chomp.downcase
# 		@letter_choice = " "
# 		@guess_left = @word_choice.length.to_i + rand(3) 
# 		@underscores = "_" * @word_choice.length
# 		@underscore_display = @underscores.split
# 	end
	


# 	def guess
# 		guesses = []
# 		correct_guesses = []
# 		until @guess_left == -1
# 		puts "User two please guess a letter from the word User one selected." 
# 		@letter_choice = gets.chomp.downcase 
# 		guesses.each do |x|
# 			if @letter_choice == x 
# 				until @letter_choice != x  
# 			puts "Please pick a letter you haven't selected"
# 			@letter_choice = gets.chomp.downcase 
# 				end 
# 			end
# 		end 
# 		word_array = @word_choice.chars


# 		if word_array.include?(@letter_choice)
			
			
			
			
# 			correct_guesses << @letter_choice
# 			guesses << @letter_choice
# 		else 
# 			puts "Incorrect guess" 
# 			guesses << @letter_choice 
# 		end  
		
# 		if correct_guesses == word_array 
# 			puts "You win!!!"
# 			break
# 		end 
		
	
		
# 		@guess_left -= 1 
# 		if @guess_left == 1 
# 			puts "You have one guess left! Make it count!"
# 		elsif @guess_left == 0 
# 			puts "You lose!"
# 			break 
# 		end 
# 		puts "You have #{guess_left} guesses left"
# 	end 
	
# 	end 
# end 

# word = Wordgame.new

# word.guess 
