# This function activates when a player opens an Ominous Vault Bundle. If they have an Ominous Trial Key, it'll give them loot. If they don't, it won't work.
# It tracks this using the corresponding "ominous_bundle" background advancement.
#
# If they don't have an Ominous Trial Key, run the bundle's reject function
execute as @s unless data entity @s {Inventory:[{id:"minecraft:ominous_trial_key"}]} run function lootbundles:bg/reject/ominous_bundle
# When a player uses this Loot Bundle, and they have an Ominous Trial Key in their hotbar or inventory, run the bundle's function
execute as @s if data entity @s {Inventory:[{id:"minecraft:ominous_trial_key"}]} run function lootbundles:bg/open/ominous_bundle
# After running the function, clear the advancement so it can be reactivated
advancement revoke @s only lootbundles:bg/ominous_bundle