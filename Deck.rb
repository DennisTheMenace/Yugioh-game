#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Testing deck.

# If you wish to add a card to the deck follow these steps:

# 1. Add the hash to the current list of cards. You must include these keys - id, name, type, atk, def and level (monsters only) and effect (for spells and traps so far, they can be left blank) 
# 2. Add the hash to the $deck1 and $deck2 variables after the last one.
# 3. Add the name of the card to the namelist variable

decktitle = "Testing Deck"

card1 = {:id => 1, :name => "Celtic Guardian", :type => "monster", :desc => "An elf who learned to wield a sword, he baffles enemies with lightning-swift attacks.", :atk => 1400, :def => 1200, :level => 4, :file => "Images/CelticGuardian.jpg"}
#Celtic Guardian STATUS: working
card2 = {:id => 2, :name => "Pot of Greed", :type => "spell", :desc => "Draw 2 card from your deck", :effect => "2.times do draw($activeplayer,'yes', false) end", :file => "Images/PotofGreed.jpg"} 
#Pot of Greed STATUS: working
card3 = {:id => 3, :name => "Trap Hole", :type => "trap", :desc => "Activate only when your opponent Normal Summons or Flip Summons a monster with 1000 or more ATK. Destroy that monster.", :effect => "", :file => "Images/TrapHole.jpg"}
#Trap Hole STATUS: not working INFO: Trap cards haven't been implemented yet
card4 = {:id => 4, :name => "Spike Seadra", :type => "monster", :desc => "Using the spikes sprouting from its body, this creature stabs its opponents and floods them with electricity.", :atk => 1600, :def => 1300, :level => 5, :file => "Images/SpikeSeadra.jpg"}
#Spike Seadra STATUS: working
card5 = {:id => 5, :name => "Lightning Vortex", :type => "spell", :desc => "Discard 1 card from your hand an destroy all monster on your opponents side of the field", :effect =>  "", :file => "Images/LightningVortex.jpg"}
#Lightning Vortex STATUS: working
card6 = {:id => 6, :name => "Giant Soldier of Stone", :type => "monster",:desc => "A giant warrior made of stone. A punch from this creature has earth-shaking results.", :atk => 1300, :def => 2000, :level => 3, :file => "Images/GiantSoldierofStone.jpg"}
#Giant Soldier of Stone STATUS: working
card7 = {:id => 7, :name => "Monster Reborn", :type => "spell",:desc => "Special Summon 1 monster from either player's Graveyard to your side of the field.", :effect => "playerset($testing)
summon(@@graveyard)", :file => "Images/MonsterReborn.jpg"}
#Monster Reborn  STATUS: untested
card8 = {:id => 8, :name => "Obnoxious Celtic Guard", :type => "monster",:desc => "This card cannot be destroyed by battle with a monster that has 1900 or more ATK.", :effect => "" ,:atk => 1400, :def => 1200, :level => 4, :file => "Images/ObnoxiousCelticGuardian.jpg"}
#Obnoxious Celtic Guardian STATUS: working
card9 = {:id => 9, :name => "Summoned Skull", :type => "monster",:desc => "A fiend with dark powers for confusing the enemy. Among the Fiend-Type monsters, this monster boasts considerable force.",:atk => 2500, :def => 1200, :level => 6, :file => "Images/SummonedSkull.jpg"}
#Summoned Skull STATUS: working
card10 = {:id => 10, :name => "Dark Magician", :type => "monster",:desc => "The ultimate wizard in terms of attack and defense.", :atk => 2500, :def => 2100, :level => 7, :file => "Images/DarkMagician.jpg"}
#Dark Magician STATUS: working
card11 = {:id => 11, :name => "Hand Destruction", :type => "spell", :desc => "Both players discard 2 cards to the graveyard then draw 2 cards.", :effect => 
"2.times do discard('all') end
2.times do draw($activeplayer,'yes', false) end", :file => "Images/HandDestruction.png"}
#Hand Destruction STATUS: working

#if $testing == 1	# Defines a different version of the card depending on the version of the game
  card12 = {:id => 12, :name => "Compulsory Evacuation Device", :type => "trap", :desc => "Return 1 monster on the field to it's owner's hand.", :effect => 'puts "Not implemented yet"'}
#Compulsory Evacuation Device STATUS: not working INFO: Trap cards haven't been implemented yet
#else
#  card12 = {:id => 12, :name => "Compulsory Evacuation Device", :type => "spell", :desc => "Return 1 monster on the field to it's owner's hand.", :effect => 'selectchoice = select(@@monsterfield) move(@@monsterfield,@@monsterfield[selectchoice],@@hand)'}
#Compulsory Evacuation Device STATUS: untested INFO: Changed to spell type for testing purposes

#end
card13 = {:id => 13, :name => "Fortune Lady Water", :type => "monster",:desc => "This card's ATK and DEF are equal to its Level x 300 . During each of your Standby Phases , increase the Level of this card by 1 (max 12) . When this card is Special Summoned while you control a face-up Fortune Lady' monster except 'Fortune Lady Water', draw 2 cards .", :atk => 0, :def => 0, :level => 4, :file => "Images/FortuneLadyWater.jpg", :effect => "
RoutineController.addroutine('standbyphase-start',
'

changecard = $monsterfield1.findcard(13)
changecard[2][:level] += 1

'
)
RoutineController.addroutine('all',
'
atkdefmodify = $monsterfield1.findcard(13)
atkdefmodify[2][:atk] = atkdefmodify[2][:level] * 300
atkdefmodify[2][:def] = atkdefmodify[2][:level] * 300
'

)
"}
#Fortune Lady Water STATUS: semi-working INFO: Mostly working, level and atk+def modifiers are working, other effect isn't yet

card14 = {:id => 14, :name => "Sakuretsu Armor", :type => "trap", :desc => "Activate only when your opponent declares an attack . Destroy the attacking monster .", :effect => 'puts "Not implemented yet"'}
#Sakuretsu Armor STATUS: not working INFO: Trap cards haven't been implemented yet
card15 = {:id => 15, :name => "", :type => "spell", :desc => "", :effect => "", :file => ""}
# No card defined yet
card16 = {:id => 16, :name => "Mythical Beast Cerberus", :type => "monster",:desc => "Each time a Spell Card is activated, place 1 Spell Counter on this card. This card gains 500 ATK for each Spell Counter on it. If this card attacks or is attacked, remove all Spell Counters from it at the end of the Battle Phase.", :effect => "", :atk => 1400, :def => 1400, :level => 4, :file => ""}

$deck1 = [card1,card2,card3,card4,card5,card6,card7,card8,card9,card10,card11,card12,card13,card14,card16]
# card15 omitted due to card15 being an empty card
$deck2 = [card1,card2,card3,card4,card5,card6,card7,card8,card9,card10,card11,card12,card13,card14,card16]
# card15 omitted due to card15 being an empty card


$namelist = []
$deck1.each{|name| $namelist.push(name[:name])}
