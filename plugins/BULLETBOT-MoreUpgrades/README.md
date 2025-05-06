# MoreUpgrades
Adds more upgrade items to the game.
## Items
- **Sprint Usage**: It uses less stamina when sprinting. *Can be upgraded multiple times*.
- **Valuable Count**: Displays the number of valuables under the mission text. *Can be upgraded only once*.
- **Map Enemy Tracker**: Tracks enemies in the map radar. *Can be upgraded only once*.
- **Map Player Tracker**: Tracks players in the map radar. *Can be upgraded only once*.
## Configuration
- **Enabled**: Whether the upgrade item can be spawned to the shop.
- **Max Amount**: The maximum number of times the upgrade item can appear in the truck.
- **Max Amount In Shop**: The maximum number of times the upgrade item can appear in the shop.
- **Minimum Price**: The minimum cost to purchase the upgrade item.
- **Maximum Price**: The maximum cost to purchase the upgrade item.
- **Price Increase Scaling**: The scale of the price increase based on the total number of upgrade item purchased.
- **Max Purchase Amount**: The maximum number of times the upgrade item can be purchased before it is no longer available in the shop.
- **Allow Team Upgrades**: Whether the upgrade item applies to the entire team instead of just one player.
- **Sync Host Upgrades**: Whether the host should sync the item upgrade for the entire team.
- **Starting Amount**: The number of times the upgrade item is applied at the start of the game.
- **Display Name**: The display name of the upgrade item.
## Note
Some upgrade items have more configuration.
Check the config file after updates, as values may change between versions.
## Adding Custom Upgrade Items
To add new upgrade items, you have to use the [R.E.P.O. Project Patcher](https://github.com/Kesomannen/unity-repo-project-patcher).
### Steps to Add An Upgrade Item
1. **Use the Project Patcher**: Follow the instructions in the [R.E.P.O. Project Patcher](https://github.com/Kesomannen/unity-repo-project-patcher)'s README.
2. **Find an Existing Item**: Search for an item in the project that you want to use as a reference.
3. **Create Your Own Item and Prefab**: Duplicate it and modify the item and the prefab as you wish.
4. **Make an Asset Bundle**: Package your item and prefab into an asset bundle so they can be loaded to the game.
### Registering Your Upgrade Item
Once you are done, you can use the following methods:  
```
MoreUpgradesLib.IsManagerActive() => bool

MoreUpgradesLib.GetCoreUpgradeItems() => IReadOnlyList<UpgradeItem>

MoreUpgradesLib.GetUpgradeItemsByMod(
    string modGUID
) => IReadOnlyList<UpgradeItem>

MoreUpgradesLib.Register(
    string modGUID,
    Item item,
    GameObject prefab,
    UpgradeItemBase upgradeItemBase
) => UpgradeItem
```