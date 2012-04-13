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
    def randomcard
       draw = rand(@allcards.size) 
    end
end

