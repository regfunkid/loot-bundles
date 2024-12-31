# Loads all the important scoreboards and whatnot required for the datapack to work.
# If you don't know what you're doing, don't touch!
#
# "lootbundles.PlayerValue" is used to store the value that players roll when getting a loot bundle. The other 4 "LootChance" scores are used to test against when rolling for a bundle, depending on what the player is rollng for. "RerollChance" is used to detect when to instead give the player a new Loot Bundle of a higher tier
#
# Create the objectives...
scoreboard objectives add lootbundles.PlayerValue dummy
scoreboard objectives add lootbundles.CommonLootChance dummy
scoreboard objectives add lootbundles.UncommonLootChance dummy
scoreboard objectives add lootbundles.RareLootChance dummy
scoreboard objectives add lootbundles.EpicLootChance dummy
scoreboard objectives add lootbundles.RerollChance dummy
# Then, save a default "global" value so the datapack knows what number to test against for each scoreboard that requires it
# Set any necessary objective scores...
scoreboard players set lootbundles.global lootbundles.CommonLootChance 50
scoreboard players set lootbundles.global lootbundles.UncommonLootChance 30
scoreboard players set lootbundles.global lootbundles.RareLootChance 30
scoreboard players set lootbundles.global lootbundles.EpicLootChance 10
scoreboard players set lootbundles.global lootbundles.RerollChance 30