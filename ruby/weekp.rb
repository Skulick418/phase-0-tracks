class Dancer 
attr_reader :name, :pirouette, :bow, :jump, :card
attr_accessor :age
   

    def initialize (name, age)
      @name = name
      @age = age
      @pirouette = "*twirls*"
      @bow = "*bows*"
      @jump = "*leaps*"
      @begin_next_dance = "Now dancing with Mikhail Baryshnikov."
      @card = []
      
      
    end
 

    def queue_dance_with(dance1)
      
   
      @card << dance1 
      
    end 

    def begin_next_dance
      @card.each do |x| 
        if x =="Mikhail Baryshnikov" 
          return "Now dancing with Mikhail Baryshnikov."
        end
         @card.keep_if {|x| x =~ /["Anna Pavlova"]/ } 
        return @card
      end
       
        # @card.each do |x|
          # if x = "Mikhail Baryshnikov"
          #   @card.delete(x) 
          #   return @card  
          # end 

      #   def card 
      #     @card.keep_if {|x| x =~! /["Anna Pavlova"]/ } 
      #   return @card
      # end 

      

     

      
    end 
  end 



