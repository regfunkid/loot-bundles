# This function activates when a player opens an Ominous Vault Bundle.
#
# Play a sound, remove their key (if they AREN'T in creative mode), give them their goodies, and try to give them the advancement
playsound minecraft:block.vault.open_shutter
clear @s[gamemode=!creative] ominous_trial_key 1
loot give @s loot chests/trial_chambers/reward_ominous
advancement grant @s[advancements={lootbundles:rebundling=false}] only lootbundles:rebundling