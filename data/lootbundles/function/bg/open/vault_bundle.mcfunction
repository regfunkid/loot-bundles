# This function activates when a player opens a Vault Bundle.
#
# Play a sound, remove their key (if they AREN'T in creative mode), give them their goodies, and try to give them the advancement
playsound minecraft:block.vault.open_shutter
clear @s[gamemode=!creative] trial_key 1
loot give @s loot chests/trial_chambers/reward
advancement grant @s[advancements={lootbundles:trial_by_bundle=false}] only lootbundles:trial_by_bundle