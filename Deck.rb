#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Testing deck.

# If you wish to add a card to the deck follow these steps:

# 1. Add the hash to the current list of cards. You must include these keys - id, name, type, atk, def and level (monsters only) and effect (for spells and traps so far, they can be left blank) 
# 2. Add the hash to the $deck1 and $deck2 variables after the last one.
# 3. Add the name of the card to the namelist variable

decktitle = "Testing Deck"

card1 = {:id => 1, :name => "Celtic Guardian", :type => "monster", :desc => "An elf who learned to wield a sword, he baffles enemies with lightning-swift attacks.", :atk => 1400, :def => 1200, :level => 4, :file => "Images/CelticGuardian.jpg"}
card2 = {:id => 2, :name => "Pot of Greed", :type => "spell", :desc => "Draw 2 card from your deck", :effect => "2.times do draw($activeplayer,'yes', false) end", :file => "Images/PotofGreed.jpg"}
card3 = {:id => 3, :name => "Trap Hole", :type => "trap", :desc => "Activate only when your opponent Normal Summons or Flip Summons a monster with 1000 or more ATK. Destroy that monster.", :effect => "", :file => "Images/TrapHole.jpg"}
card4 = {:id => 4, :name => "Spike Seadra", :type => "monster", :desc => "Using the spikes sprouting from its body, this creature stabs its opponents and floods them with electricity.", :atk => 1600, :def => 1300, :level => 5, :file => "Images/SpikeSeadra.jpg"}
card5 = {:id => 5, :name => "Lightning Vortex", :type => "spell", :desc => "Discard 1 card from your hand an destroy all monster on your opponents side of the field", :effect =>  "", :file => "Images/LightningVortex.jpg"}
card6 = {:id => 6, :name => "Giant Soldier of Stone", :type => "monster",:desc => "A giant warrior made of stone. A punch from this creature has earth-shaking results.", :atk => 1300, :def => 2000, :level => 3, :file => "Images/GiantSoldierofStone.jpg"}
card7 = {:id => 7, :name => "Monster Reborn", :type => "spell",:desc => "Special Summon 1 monster from either player's Graveyard to your side of the field.", :effect => "playerset($testing)
summon(@@graveyard)", :file => "Images/MonsterReborn.jpg"}
card8 = {:id => 8, :name => "Obnoxious Celtic Guard", :type => "monster",:desc => "This card cannot be destroyed by battle with a monster that has 1900 or more ATK.", :effect => "" ,:atk => 1400, :def => 1200, :level => 4, :file => "Images/ObnoxiousCelticGuardian.jpg"}
card9 = {:id => 9, :name => "Summoned Skull", :type => "monster",:desc => "A fiend with dark powers for confusing the enemy. Among the Fiend-Type monsters, this monster boasts considerable force.",:atk => 2500, :def => 1200, :level => 6, :file => "Images/SummonedSkull.jpg"}
card10 = {:id => 10, :name => "Dark Magician", :type => "monster",:desc => "The ultimate wizard in terms of attack and defense.", :atk => 2500, :def => 2100, :level => 7, :file => "Images/DarkMagician.jpg"}
card11 = {:id => 11, :name => "Hand Destruction", :type => "spell", :desc => "Both players discard 2 cards to the graveyard then draw 2 cards.", :effect => 
"2.times do discard('all') end
2.times do draw($activeplayer,'yes', false) end", :file => "Images/HandDestruction.png"}

# Hand destruction is currently being tested.
card12 = {:id => 12, :name => "Compulsory Evacuation Device", :type => "trap", :desc => "Return 1 monster on the field to it's owner's hand.", :effect => 'puts "Not implemented yet"'}
card13 = {:id => 13, :name => "Fortune Lady Water", :type => "monster",:desc => "This card's ATK and DEF are equal to its Level x 300 . During each of your Standby Phases , increase the Level of this card by 1 (max 12) . When this card is Special Summoned while you control a face-up Fortune Lady' monster except 'Fortune Lady Water', draw 2 cards .", :atk => nil, :def => nil, :level => 4, :file => "Images/FortuneLadyWater.jpg", :effect => ""}
card14 = {:id => 14, :name => "Sakuretsu Armor", :type => "trap", :desc => "Activate only when your opponent declares an attack . Destroy the attacking monster .", :effect => 'puts "Not implemented yet"'}

$deck1 = [card1,card2,card3,card4,card5,card6,card7,card8,card9,card10,card11,card12,card13,card14]
$deck2 = [card1,card2,card3,card4,card5,card6,card7,card8,card9,card10,card11,card12,card13,card14]



namelist = "Celtic guardian
Pot of Greed
Trap Hole
Spike Seadra
Lightning Vortex
Giant Soldier of Stone
Monster Reborn
Obnoxious Celtic Guard
Summoned Skull
Dark Magician
Hand Destruction
Compulsory Evacuation Device
Fortune Lady Water
Sakuretsu Armor"
