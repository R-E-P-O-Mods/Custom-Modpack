This mod adds a crafting system to REPO! Add some ingredients to the pot, shake it up, and create some thing new and useful!

### **!!REQUIRES OTHER MODS TO ADD RECIPES AND INGREDIENTS!!** (check out [Unique Potions](https://thunderstore.io/c/repo/p/Yuckers/Unique_Potions/))

**Easy for other modders to add new content too!** (instructions below)



# The P.O.T.

This handy device, the *Portable Oscillation Transmutator*, can take something... and turn it into something else! You can even put it in your pocket!

To use it simply throw in the ingredients you find in the level, look for the shake indicator on the display to make sure the recipe is valid, grab the handle, and shake the P.O.T. until your product is ready. Make sure it's cooked thoroughly.

You can store ingredients inside the P.O.T. by depositing them into the funnel on the left side. The ingredients are accessable on the right. Be careful when you leave though, as you can only bring 2 of each ingredient (configurable) to the next level.

If you have more than 4 different types of ingredients in the P.O.T. at one time, press your use key while holding it to cycle through them.

The indicator lights behind the ingredients show you: 
- **Orange:** multiple of this ingredient are stored
- **Red:** too many of this ingredient are stored (they will be lost next level)
- **Magenta:** this ingredient is unlimited


# The Ingredients

By default, this mod does not add any ingredients or recipes. I recommend getting my other mod, [Unique Potions](https://thunderstore.io/c/repo/p/Yuckers/Unique_Potions/), for various craftable potions!
A configurable amount of ingredients can be found in each level (default 1-4). These ingredients do not spawn like other valuables, so they don't reduce your total haul in any way.

# How to add your own content

This mod adds content similar to how REPO Lib allows you to add content. There are two methods to adding content: through scripting or through the unity editor. To set up your unity project, follow [this guide](https://repomods.com/repolib/sdk/start.html), then drag `REPOAlchemy.dll` (found in the mod folder) into your unity project.

## Ingredients

### Custom Ingredients

To add a new ingredient, create a prefab like you would for a valuable or item, and add an `Ingredient` component. Set up the parameters to your liking.

- **`ingredientID` (IMPORTANT)** used to differentiate between the ingredients
- `canStore` whether or not the ingredient can be stored and transferred between levels in the P.O.T.
- `storeOnExtract` whether or not the ingredient should be stored and transferred to the next level when the object is extracted (reqires `canStore` to be enabled).
- `storedScale` determines how large the ingredient will be when stored on the P.O.T.
- `potScale` determines the scale the ingredient should be changed to when placed inside the pot (useful if your ingredient is large).

*Other parameters will be explained in the recipes section. Most of them are unimportant if you do not intend for the ingredient to be craftable.*

Once you've set up your ingredient, you can register it into the game by creating a new `Ingredient` asset in your unity project and dragging in your prefab. the `useIngredientSpawning` parameter determines whether or not it will spawn like other ingredients (recommended to turn this off if you want this ingredient to be crafted from other ingredients).

Make sure each asset has a unique name.

### Existing Objects as Ingredients

If you would like to use an existing valuable or shop item (modded or vanilla) as an ingredient (e.g. a diamond or grenade), then simply add a `Valuable Ingredient` or `Item Ingredient` into your project. Set the name of the item/valuable you want to turn into an ingredient (make sure __NOT__ to include "Valuable " or "Item " in the front). Simply set the parameters like explained before, and it's all set.

Make sure each asset has a unique name.


## Recipes

### Custom Products

To add a recipe for a new object, create a prefab like before, and add an `AlchemyItem` component (`Ingredient` components count as `AlchemyItem` components). Set up the parameters.

- `color` determines the color of the particle effects when crafting this recipe.
- `icon` determines the icon that shows up on the P.O.T's display when the the recipe can be crafted (recommended 256 x 256 px).
- `potScale` determines the scale the product should be changed to when crafted or placed inside the pot (useful if your product is large).
- `itemPersistent` (only applies to shop items) determines whether the item should transfer between levels.

To register the recipe, add a new `Recipe` asset to your unity project. Drag in the product's prefab, and set the `ingredients`. This uses the `ingredientID`s of the ingredients set up beforehand. You can use your own or other people's ingredients as long as you have the `ingredientID`.

Make sure each asset has a unique name.

### Existing objects as Products

To use add a recipe for an existing valuable or shop item, add a `Valuable Recipe` or `Item Recipe` similar to how you would set up existing objects as ingredients.

## Registering Using Scripts

Registering through a script is similar to in unity. I have provided tools for registering valuables and recipes in my `Tools` class. to register a

- **Ingredient:** use `Tools.RegisterIngredient`.
- **Existing valuable as ingredient:** use `Tools.RegisterIngredientByValuableName`.
- **Existing item as ingredient:** use `Tools.RegisterIngredientByItemName`.
- **Recipe:** use `Tools.RegisterRecipe`.
- **Recipe for existing valuable:** use `Tools.RegisterRecipeByValuableName`.
- **Recipe for existing item:** use `Tools.RegisterRecipeByItemName`.



I'm currently a busy college student, so development may be slow. Bare with me!
If you have any questions or comments, ping me in [my forum on the modding discord](https://discord.com/channels/1344557689979670578/1360442975812976690).

---

# Credit

- **[Beaniebe](https://thunderstore.io/c/repo/p/Beaniebe/)**: Testing REPOLib SDK additions