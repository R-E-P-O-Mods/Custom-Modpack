# ItemResistUpgrade
Adds an upgrade to add item resistance while holding an Item which decreases the amount of damage the item takes.

Fragile items will be able to withstand a few hits easier!

Each Upgrade by default will reduce damage to a valuable with the formula (0.8^(num_upgrades))

5 Upgrades make items only lose a third of the normal damage for example, while 10 upgrades makes them only take 10% damage

## Configuration
- **Upgrade Name**: The name of the upgrade.
- **Item Resist Upgrade Power**: The multiplier of item resist per upgrade on an item (Lower is stronger).
- **Minimum Price**: The minimum base price of the upgrade.
- **Maximum Price**: The maximum base price of the upgrade.
- **Price Scaling**: The amount the upgrade price increases by (multiplier of base value) per upgrade already purchased, base game value is 0.5
- **Shop Amount Maximum**: The maximum amount of times the upgrade can appear in the shop.

More Configurations for enabling/disabling, team use, start upgrade amounts, can be found in the [MoreUpgrades](https://thunderstore.io/c/repo/p/BULLETBOT/MoreUpgrades/) Mod config