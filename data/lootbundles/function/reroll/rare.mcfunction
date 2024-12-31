# This function just gives the player the "Reroll!" advancement and a new Loot Bundle.
# The Loot Bundle given is specific to the function file for that tier.
#
# Give the player an advancement, but only if they don't already have it
advancement grant @s[advancements={lootbundles:reroll=false}] only lootbundles:reroll
# Then, give them a new Loot Bundle!
function lootbundles:give_item/epic_bundle {player:'@s',count:1}