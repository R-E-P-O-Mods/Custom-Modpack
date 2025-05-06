## Releases

<details>
    <summary><b>1.3.3</b></summary>
    <ul>
	<li>
	    <p>Added checks to remove null volumes which caused infinite loading bugs.</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.3.2</b></summary>
    <ul>
	<li>
	    <p>Added an additional config to toggle the extra shelf spawning. (If you want to disable the shelf, everyone must have the config set to false.</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.3.1</b></summary>
    <ul>
	<li>
	    <p>Added check for Vanilla Upgrades mod.</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.3.0</b></summary>
    <ul>
	<li>
	    <p>Config values can now go to -1 in which vanilla values will be used.</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.9</b></summary>
    <ul>
	<li>
	    <p>Changed some values.</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.8</b></summary>
    <ul>
	<li>
	    <p>Added a LOT of config entries to customize your experience. Only change the values if you know what you're doing. (default values work fine)</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.7</b></summary>
    <ul>
	<li>
	    <p>Fixed carts being affected by Max Amount</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.6</b></summary>
    <ul>
	<li>
	    <p>Organized code for better readability, and clarity.</p>
	</li>
        <li>
	    <p>Rewrote the config to be more concise.</p>
	</li>
	<li>
	    <p>Altered the item spawning code to hopefully allow more single use items to spawn. (Map Player Count, and modded upgrades such as Valuable Count, Map Enemy Count, etc)</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.5</b></summary>
    <ul>
	<li>
	    <p>Compatibility with some modded upgrades has been added. (As of now, only upgrades added through MoreUpgrades will be detected)</p>
	</li>
        <li>
	    <p>Added a toggle in the config to override modded values. (leave false if you want to use the mods config)</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.4</b></summary>
    <ul>
        <li>
	    <p>Added another config slider to allow more control over the mod.</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.3</b></summary>
    <p>Fixes</p>
    <ul>
	<li>
	    <p>Reverted the shelving prefab to 1.2.1 (removed some lights) to fix potential performance hinderances.</p>
	</li>
	<li>
	    <p>Additional checks to prevent the shelf from spawning multiple times, which affected performance.</p>
	</li>
	<li>
	    <p>Fixed weapons spawning when the limit was reached. (caused weapons and items you bought to disappear)</p>
	</li>
    </ul>
    <p>Additions</p>
    <ul>
        <li>
	    <p>Added a two config entries that you can customize.</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.2</b></summary>
    <ul>
        <li>
	    <p>Fixed the networking code causing the shelf to spawn in the truck. (Hopefully for good!)</p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.1</b></summary>
    <ul>
        <li>
	    <p>Added additional level verification to prevent the truck from being partially blocked. (This however might prevent the shelf from spawning, but only in very rare edge cases)
	    </p>
	</li>
    </ul>
</details>

<details>
    <summary><b>1.2.0</b></summary>
    <ul>
        <li>Removed smaller custom shelf</li>
        <li>Added large shelving unit that holds more items</li>
        <li>Increased the item limit to account for more spawning volumes</li>
        <li>Created a GitHub repository for bug reports</li>
    </ul>
</details>

<details>
    <summary><b>1.1.0</b></summary>
    <ul>
        <li>Fixed Instance initialization</li>
        <li>Added config values for item spawns</li>
        <li>Added additional shelf in front of cash register</li>
        <li>Fixed issue with spawn capacity of items in shop</li>
    </ul>
</details>

<details>
    <summary><b>1.0.0</b></summary>
    <ul>
        <li>Initial Release</li>
    </ul>
</details>
