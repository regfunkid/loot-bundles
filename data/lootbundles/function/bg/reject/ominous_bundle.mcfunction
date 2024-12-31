# This function activates when a player can't open an Ominous Vault Bundle.
#
# Inform the player they need an item to open this Loot Bundle, then play a sound and give it back to them
tellraw @s {"translate":"chat.lootbundles.ominous_nokey"}
playsound minecraft:block.vault.reject_rewarded_player
# Only run this command if the player ISN'T in creative mode, since if they try to open the bag while in creative they'll end up duplicating it
function lootbundles:give_item/ominous_bundle {player:'@s[gamemode=!creative]',count:1}