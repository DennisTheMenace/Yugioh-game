#!/usr/bin/env ruby
def playerset
  if $activeplayer == 0
      @@hand = $player1area[0]
      @@deck = $player1area[1]
      @@graveyard = $player1area[2]
      @@name = $player1area[3]
      @@monsterfield = $player1area[4]
      @@ehand = $player2area[0]
      @@edeck = $player2area[1]
      @@egraveyard = $player2area[2]
      @@ename = $player2area[3]
      @@emonsterfield = $player2area[4]
    end
    if $activeplayer == 1
      @@hand = $player2area[0]
      @@deck = $player2area[1]
      @@graveyard = $player2area[2]
      @@name = $player2area[3]
      @@monsterfield = $player2area[4]
      @@ehand = $player1area[0]
      @@edeck = $player1area[1]
      @@egraveyard = $player1area[2]
      @@ename = $player1area[3]
      @@emonsterfield = $player1area[4]
    end
end
