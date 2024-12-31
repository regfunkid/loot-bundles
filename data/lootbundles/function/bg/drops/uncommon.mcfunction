# This function uses an advancement to check when a player kills specific mobs, and if they do, runs the following commands.
#
# First, store the result of a random value between 1 and 1000 to the player
# (I only picked 1000 because it's easier to pick a range of values for a 4 digit number)
execute store result score @s lootbundles.PlayerValue run random value 1..1000
# Then, using the value that players have in the lootbundles.PlayerValue score, if that random value is equal to or less than lootbundles.UncommonLootChance stored by lootbundles.global (30 by default, making it a 3% chance), give the player a Uncommon Loot Bundle
execute if score @s lootbundles.PlayerValue <= lootbundles.global lootbundles.UncommonLootChance run function lootbundles:give_item/uncommon_bundle {player:'@s',count:1}
# Finally, reset the player's "lootbundles.PlayerValue" score and revoke the advancement so the player is able to reactivate it later
scoreboard players reset @s lootbundles.PlayerValue
advancement revoke @s only lootbundles:bg/roll_uncommon