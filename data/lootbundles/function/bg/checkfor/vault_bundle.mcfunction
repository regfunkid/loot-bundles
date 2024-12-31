# This function activates when a player opens a Vault Bundle. If they have a Trial Key, it'll give them loot. If they don't, it won't work.
# It tracks this using the corresponding "vault_bundle" background advancement.
#
# If they don't have a Trial Key, run the bundle's reject function
execute as @s unless data entity @s {Inventory:[{id:"minecraft:trial_key"}]} run function lootbundles:bg/reject/vault_bundle
# When a player uses this Loot Bundle, and they have a Trial Key in their hotbar or inventory, run the bundle's function
execute as @s if data entity @s {Inventory:[{id:"minecraft:trial_key"}]} run function lootbundles:bg/open/vault_bundle
# After running the function, clear the advancement so it can be reactivated
advancement revoke @s only lootbundles:bg/vault_bundle