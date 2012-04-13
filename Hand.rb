#!/usr/bin/env ruby

class AreaController
    attr_accessor :allcards
    def initialize								
        @allcards = []
    end
    def addcard(card)     # Method for adding a card to this specific area
        areasize = @allcards.size
        @allcards.push(card)
    end
    def removecard(card)
        @allcards.delete(card)
    end
    def list
        @allcards.each {|card|
            if card[0] == 1
                puts card[2][:name]
            end
        }
    end
    def selectcard(type)
        puts @allcards.size
        
        @allcards.each{|card| 
            puts card[:type]
            if card[:type] == type
                puts "1"
                puts card[:name]
            else
                puts "0"
            end} 
        puts "done"
        response = gets.to_i
        response -= 1
        return @allcards[response]
    end
    def randomcard
       draw = rand(@allcards.size) 
    end
end

