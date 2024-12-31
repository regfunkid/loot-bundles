# This function activates when a player opens a Rare Loot Bundle.
# When this function runs, either upgrade their Loot Bundle or run a loot command that will automatically choose a random loot table from 1 of 4 options, and give them their goodies!
#
# First, store the result of a random value between 1 and 1000 to the player
execute store result score @s lootbundles.PlayerValue run random value 1..1000
# Then, using the value that players have in the lootbundles.PlayerValue score, if that random value is equal to or less than lootbundles.RerollChance stored by lootbundles.global (set to 30 by default, making it a 3% chance), run a function that rerolls the player's Loot Bundle into one of a higher tier
# Rare Loot Bundles have the same chances as Uncommon because the list of possible mobs to drop from are either harder to regularly encounter, or more difficult to kill.
execute if score @s lootbundles.PlayerValue <= lootbundles.global lootbundles.RerollChance run function lootbundles:reroll/rare
# We can reuse the code above to easily run the actual Loot Bundle opening command if the bundle fails to reroll. Since this one only checks for lootbundles.PlayerValue being HIGHER than lootbundles.RerollChance, it's impossible for both commands to accidentally activate
execute if score @s lootbundles.PlayerValue > lootbundles.global lootbundles.RerollChance run execute at @s run loot spawn ~ ~ ~ loot lootbundles:rare_bundle
# Then, revoke the advancement so they can reactivate it later
advancement revoke @s only lootbundles:bg/open_rare
# The loot tables chosen can be found in the "loot_table/rare_bundle" file, but the catagories are: (Rare) Ores, Foods, Materials, and Blocks
# There's a (small) chance for the Loot Bundle to instead drop a new Loot Bundle of a higher tier--when this happens, an advancement will also be granted