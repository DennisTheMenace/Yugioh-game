#!/usr/bin/env ruby

# Testing deck.

card1 = {:id => 1, :name => "Celtic guardian", :type => "monster", :desc => "An elf who learned to wield a sword, he baffles enemies with lightning-swift attacks.", :atk => 1400, :def => 1200, :level => 4}
card2 = {:id => 2, :name => "Pot of Greed", :type => "spell", :desc => "Draw 2 card from your deck", :effect => "2.times do draw($activeplayer,'yes') end"}
card3 = {:id => 3, :name => "Trap Hole", :type => "trap", :desc => "Activate only when your opponent Normal Summons or Flip Summons a monster with 1000 or more ATK. Destroy that monster.", :effect => ""}
card4 = {:id => 4, :name => "Spike Seadra", :type => "monster", :desc => "Using the spikes sprouting from its body, this creature stabs its opponents and floods them with electricity.", :atk => 1600, :def => 1300, :level => 5}
card5 = {:id => 5, :name => "Lightning Vortex", :type => "spell", :desc => "Discard 1 card from your hand an destroy all monster on your opponents side of the field", :effect =>  ""}
card6 = {:id => 6, :name => "Giant Soldier of Stone", :type => "monster",:desc => "A giant warrior made of stone. A punch from this creature has earth-shaking results.", :atk => 1300, :def => 2000, :level => 3}
card7 = {:id => 7, :name => "Monster Reborn", :type => "spell",:desc => "Special Summon 1 monster from either player's Graveyard to your side of the field.", :effect => "summon($graveyard1)"}
card8 = {:id => 8, :name => "Obnoxious Celtic Guard", :type => "monster",:desc => "This card cannot be destroyed by battle with a monster that has 1900 or more ATK.", :effect => "" ,:atk => 1400, :def => 1200, :level => 4}
card9 = {:id => 9, :name => "Summoned Skull", :type => "monster",:desc => "A fiend with dark powers for confusing the enemy. Among the Fiend-Type monsters, this monster boasts considerable force.",:atk => 2500, :def => 1200, :level => 6}
card10 = {:id => 10, :name => "Dark Magician", :type => "monster",:desc => "The ultimate wizard in terms of attack and defense.", :atk => 2500, :def => 2100, :level => 7}
card11 = {:id => 11, :name => "Hand Destruction", :type => "spell", :desc => "Both players discard 2 cards to the graveyard then draw 2 cards.", :effect => 
"2.times do discard('all',$activeplayer) end
2.times do draw($activeplayer,'yes') end"}

# Hand destruction is currently being tested.
card12 = {:id => 12, :name => "Compulsory Evacuation Device", :type => "spell", :desc => "Return 1 monster on the field to it's owner's hand.", :effect => "move($monsterfield1)"} # Should be a trap card but is a temporarily a spell to allow testing.
$deck1 = [card1,card2,card3,card4,card5,card6,card7,card8,card9,card10,card11,card12]
$deck2 = [card1,card2,card3,card4,card5,card6,card7,card8,card9,card10,card11,card12]
