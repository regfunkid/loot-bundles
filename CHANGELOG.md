# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project *loosely* adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
The main difference is that the MAJOR.MINOR.PATCH system doesn't change the MAJOR indicator, as most version changes are NOT backwards compatible and the MINOR indicator will increase regardless of if that version can be played in an earlier update.
However, if the version update is a bug fix/patch/update that does NOT change the resourcepack or datapack format, and does NOT otherwise add anything, then the PATCH indicator will be updated accordingly.
TL;DR: This pretty much follows Mojang's update structure for Minecraft updates.

Update numbers are written in YYYY/MM/DD format.

## [0.1.0-alpha] - 2024-12-30

### Added
#### Items
5 new items have been added to Minecraft in this Alpha version:
- Added Common Loot Bundle
- Added Uncommon Loot Bundle
- Added Rare Loot Bundle
  - Technically, Epic Loot Bundles ARE in this version, but they cannot be obtained without rerolling for them and they have no functionality
- Added Vault Loot Bundle
- Added Ominous Vault Loot Bundle
#### Advancements
5 new advancements have been added to Minecraft in Alpha version:
- "Bundles of Joy" for obtaining any Loot Bundle
- "Reroll!" for rerolling a Loot Bundle into one of a higher tier
- "Trial By Bundle" for opening a Vault Loot Bundle with a Trial Key
- "Rebundling" for opening an Ominous Vault Loot Bundle with an Ominous Trial Key
- "A Dangerous Gamble" for obtaining an Epic Loot Bundle
#### Misc
- Created the functionality that Loot Bundles is built upon. For more information, take a look inside the datapack's files and see if you can intuit how it works (there are many comments in the function files!)
### Config
- Added `give_item` function files for each Loot Bundle
  - NOTE: Epic Loot Bundles currently lack functionality, as this is just an alpha test. The only way to obtain one is through rerolling from a Rare Loot Bundle. If you obtaining a Epic Bundle, just hold onto it!