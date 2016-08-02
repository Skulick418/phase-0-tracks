puts "What is the hamsters name?"
    name = gets.chomp
    
puts "On a scale of (1-10), 10 being the loudest and 1 being quiet, how loud is your hamster?"
    volume = gets.chomp
        if volume
            puts "#{volume}".to_f
        end
        
        
    
puts "What is the hamsters fur color?"
    fur_color = gets.chomp
    
puts "Is the hamster a good candidate for adoption? (y/n)"
    adoption = gets.chomp
        if adoption == "y"
            y = true
                puts "Great!"
        elsif adoption == "n"
            n = false
                puts "Aw, bummer!"
        end
        
        
puts "What is the hamsters age?"
    age = gets.chomp
        if age
            puts "#{age}".to_f
            elsif age = age.nil?
        end
        
puts "Hamster Name: #{name}", "Volume scale: #{volume}", "Fur color: #{fur_color}", "Up for adoption?: #{adoption}", "Hamster age: #{age}"