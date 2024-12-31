# This function just gives the player the "Reroll!" advancement and a new Loot Bundle.
# The Loot Bundle given is specific to the function file for that tier.
#
# Give the player an advancement, but only if they don't already have it
advancement grant @s[advancements={lootbundles:reroll=false}] only lootbundles:reroll
# Then, give them a new Loot Bundle!
# Since there isn't a tier above "epic", just give the player another Epic Loot Bundle if they manage to reroll it (note: To make this easy for myself, this runs two function commands. The first triggers like normal--the second ONLY triggers if the player ISN'T in Creative Mode, which would prevent them from duping the bag)
function lootbundles:give_item/epic_bundle {player:'@s',count:1}
function lootbundles:give_item/epic_bundle {player:'@s[gamemode=!creative]',count:1}