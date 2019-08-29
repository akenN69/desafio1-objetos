class Card
    attr_reader :suits, :number
    
    def initialize()
        @number = [:as, 2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king].sample
        @suits = [:diamonds, :spades, :hearts, :clubs].sample   #.sample toma valor al azar
    end  
end

class Player
    attr_reader :hand
    def initialize
        play
    end

    def play
        @hand = []
        5.times{ @hand << Card.new }
    end

    def show_hand
        @hand.each do |card|
            puts "#{card.number} de #{card.suits.capitalize}"
        end
    end
end

def exit
    puts 'Elegiste la opción salir del juego. Chaooo!'
end
