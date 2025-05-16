## 0.16.18
- Fixed Clover Necklace always knocking down non-host players even if they are the one that turned it on

## 0.16.17
- Moved Clover Necklace code around to avoid desync issues
- Made some small changes to Fyrus Star to make it easier to use for non-host players
- Attempted to patch a small exploit for the Fyrus Star dealing damage even when held back

## 0.16.16
- Fixed Clover Necklace being permenantly off

## 0.16.15
- Realised a blunderous assumption I'd made regarding the Worm Jar in that if multiple of a type of enemy spawn, only one of them would be infectable

## 0.16.14
- Added checks to see if the current REPO version is the beta, and display warnings for certain items
- All items appear to work as expected using the beta except: Chaos Emeralds, Smith Note, Smith Halo and Clover Necklace

## 0.16.13
- Adjusted Giwi Worm physics to make her more worm-like
- Adjusted Alpharad Dice physics to make the roll a little more natural
- Reduced the number of activations necessary for Sleepyhead to get REAL mad

## 0.16.12
- FINALLY FIXED GIWI WORM, she can now be lifted by non-host players
- Optimized Smith Note slightly
- Gave Clover Necklace a 30 second timer to disable itself so it won't softlock
- Redid Alpharad Dice code again, it's pure chance now, ungameable
- Gave the Alpharad Dice gaining money graphic a plus sign at the start for clarity

## 0.16.11
- Attempted to only allow unique Chaos Emeralds and Dragon Balls to spawn, based on what you have already collected
- Put the Worm Jar lag to rest, lag was caused by the worm music, just delayed it by a second
- Gave some enemies some specific code for worm infections so that they're less lethal despite infection
- Made some more general changes to how worm infections affect enemies

## 0.16.10
- Made a big blunder and the mario dice was always rolling a 1, fixed it now (was one single character change to fix)
- Fixed Ari, Moo Cow, Clover and Halo all having incorrect physics when held
- Made Adi, Moo Cow, Clover and Halo all float downwards rather than fall
- Adjusted Halo's collisions and swing speed
- Attempted to make worm infected Huntsman non-lethal
- Fixed Worm Jar lag upon smashing
- Increased the speed at which the Fyrus Star must be going for it to hurt things around it
- Made Fyrus Star stop moving while the rider is crouched

## 0.16.9
- Idk how but Worm Jar was broken and I added 4 characters to fix it

## 0.16.8
- Updated for compatibility with latest REPOLib version (2.1.0.0)

## 0.16.7
- Moved some code around to avoid inevitable errors, fuck you coroutines just let me patch you

## 0.16.6
- Quick patchwork fix for an issue that occurs if the Worm Jar is disabled

## 0.16.5
- Attempted to avoid Worm Jar lag upon breaking it
- Attempted to avoid Worm Jar causing enemies to error spam in some cases
- Made enemy reskins (digirugcats) synced to host

## 0.16.4
- Added Chiikawa to the README

## 0.16.3
- Edited Chiikawa audio system slightly to avoid log warnings

## 0.16.2
- Finally finished all of the Chiikawa characters, except for Furuhonya/Kani voicelines/sound effects as I could not find any

## 0.16.1
- Fixed issue where Worm Jar would spam errors and lag the game
- Attempted to make Ari, Moo Cow, Clover Bee and Smith Halo self-right while being held
- Made Fyrus Star hurt things while travelling near max speed, and lose some momentum when colliding
- Once again begging that I've repaired Giwi Worm once and for all
- Fixed Dragon Ball upgrade not working if modded upgrades were once present on the savefile (even if they have since been removed)
- Attempted to fix another Mario Dice exploit
- Made player speak a short instruction on how to use the Worm Jar and Smith Note upon first being held
- Added some extra voice lines to the Pixel Jar
- Finished Chiikawa code, still haven't finished all the visuals

## 0.16.0
- Overhauled Fyrus Star mechanics, should now be far more intuitive, and perhaps more useful.
- Fixed an issue with Giwi Worm attaching itself to world origin in singleplayer mode
- Fixed an exploit with Mario Dice
- Made Alolan Vulpixie voice lines while held match the state of the plush
- Increased the time between each Ari chirp
- Added the prototype for Chiikawa, there will be more!

## 0.15.0
- Figured out a desync issue with the Giwi Worm, maybe it'll behave more now?
- Stopped Ari from alerting enemies when not held
- Made Fyrus Star only float when sat in and held
- Fixed Sleepyhead causing error spam when it gets REAL mad
- Added Worm Jar, it only appears in the secret shop and how to use it will be unclear!
- Added Anti-Gambling Laws

## 0.14.3
- Apparently my Fyrus Star improvements were only working on singleplayer, now they work on multiplayer!

## 0.14.2
- Improved Fyrus Star usability
- Made changes to Alpharad's Mario Dice to make it less exploitable
- Made Jaiden's bird Ari chirp randomly when not held

## 0.14.1
- Added new items to README

## 0.14.0
- Added JaidenAnimation's bird Ari!
- Added a Mario Dice for Alpharad!
- Added gsmVoiD's crown!
- README coming later

## 0.13.0
- Added Fyrus Star!
- Moved some code around, shouldn't cause problems.

## 0.12.0
- Added Tigerbun!
- Added Clover Bee!
- Fixed double impact audio on Sleepyhead
- Fixed Smith Note destroy self config option breaking the Smith Note

## 0.11.7
- Fixed an issue where if the last holder of the Clover Necklace died, it would be hard to pick up again
- Made Alolan Vulpixie speak to you when held
- Gave Fixated Nose a chance to make a bigger explosion
- Gave Giwi Worm some extra wiggle
- Moved some Moo Cow logic from FixedUpdate to Update to avoid some timing issues
- Gave Pixel Jars a chance for the player to slander the Digicat rather than compliment it
- Increased the number of times Sleepyhead needs to get angry to get enraged
- Adjusted various debug messages

## 0.11.6
- Fixed Dragon Ball upgrades......

## 0.11.5
- Fixed certain valuables not squishing on impact for non-server clients

## 0.11.4
- Added a tutorial tip for using the Smith Note

## 0.11.3
- Finally actually fixed Chaos Emeralds effect for real this time

## 0.11.2
- Redid Giwi wiggling logic, gave her back her wiggle
- Potential fix for collecting 7 Chaos Emeralds causing error spam, again

## 0.11.1
- Potential fix for Clover Necklace not losing any charge
- Adjusted Clover Necklace's effects on players
- Adjusted Giwi to make her lighter and less powerful, haven't tested this so if she's lost all her wiggle or wiggles too much let me know
- Made Sleepyhead not trigger when in the cart or in an extraction point
- Sleepyhead no longer makes herself angry in perpetuity
- Various debug logging adjustments

## 0.11.0
- Added a reskin for the Rugrats called Digi-RugCats!
- Added a config option for the Smith Note to destroy itself after use
- Attempted to remove Smith Note from the shop
- Potential fix for Smith Note charge not going down as expected when used to kill an enemy
- Redid Giwi Worm grab and wiggle logic to hopefully make it less buggy
- Potential fix for collecting 7 Chaos Emeralds causing error spam
- Attempted to make Dragon Balls able to use MoreUpgrades upgrades
- Made Fixated Nose unable to randomly explode when in the cart or in an extraction point
- Sleepyhead explodes now :)

## 0.10.9
- Made Dragon Ball wish only use vanilla upgrades

## 0.10.8
- Players will now receive a special effect upon selling 7 Chaos Emeralds

## 0.10.7
- Made the Dragon Balls wish better and more exciting
- Potential fix for Fixated Nose not glitching camera when it explodes

## 0.10.6
- Corrected a few mistakes in the README

## 0.10.5
- Made Sleepyhead even quieter
- Fixed Fixated Nose not exploding
- Increased Clover Necklace light brightness
- Decreased Pixel Jar light brightness

## 0.10.4
- Fixed equippable items icons not generating
- Fixed Smith Note not working at all, and fixed Smith Note battery drain

## 0.10.3
- Fixed Smith Note audio error spam

## 0.10.2
- My items weren't working properly after my Unity Project reset so the shop was crashing the game, but I have now fixed it
- Added Dragon Ball and Chaos Emerald to README
- Fixed Dragon Ball upgrade breaking the game
- Adjusted Dragon Ball and Chaos Emerald's visuals

## 0.10.1
- Didn't actually include the new items in the last update, I'm so tired

## 0.10.0
- Added Dragon Balls and Chaos Emeralds! Chaos Emeralds currently have no special function, but collect all the Dragon Balls and have your wish granted...
- README to be updated later, update untested so expect issues
- My Unity project had some values reset so some miscellaneous attributes on my items may be different

## 0.9.1
- Made Sleepyhead's honk shoo mimimi quieter

## 0.9.0
- Added Clauvio's Sleepyhead!
- Potential fix for Fixated Nose trap not working
- Fixed Pixel Jars balance being off

## 0.8.1
- Made the Clover Necklace enemy knockback stronger and more energy expensive
- Clover Necklace can now knockback players
- Adjusted Moo Cow forced chat
- Removed the Smith Note killing enemies restriction in favour of battery constraints
- Made Smith Note killing players much cheaper

## 0.8.0
- Added Alolan Vulpixie! She doesn't much enjoy hitting the floor
- Adjusted spawn locations of all my valuables to, hopefully, avoid them spawning inside other colliders
- Gave all my valuables a cutsom center of mass

## 0.7.3
- Adjusted Smith Note spawn position so it doesn't fly outside of the map
- Made Smith Note particles not follow the book
- Attempted to fix particles and music not working properly for the Smith Note
- Made Clover Necklace bee sounds fade out slower

## 0.7.2
- Made Smith Halo self balance when not being held
- Fixed Smith Note not displaying text properly
- Changed the enemy list system for the Smith Note so it's more accurate

## 0.7.1
- Added a preview image for Clover Necklace
- Made Clover Necklace auto-rotate when held
- Fixed Clover Necklace being visible on first spawn
- Fixed Clover Necklace activation causing player to crouch and pushing itself to the ground
- Updated README

## 0.7.0
- Added Clover Necklace! They tickle...
- Adding preview image later
- Made it so that the Smith Note requires full charge to be used

## 0.6.6
- Made Smith Note single use per round for enemies, still unlimited for players

## 0.6.5
- Added a text cleaner to make untypeable steam usernames typeable into the Smith Note

## 0.6.4
- Added the ability for Smith Note to target enemies
- In singleplayer, the Smith Note will select a random enemy to kill rather than killing the player

## 0.6.3
- Removed the Smith Note from the shop, instead made it spawn on runs!
- Fixed Smith Note text not working properly upon killing someone (probably)

## 0.6.2
- Made the Smith Note unusable in the shop in singleplayer
- Removed the ability to spam kill on the same player using the Smith Note
- Fixed some desyncs with the Smith Note

## 0.6.1
- Fixed an error and some minor issues with the Smith Note

## 0.6.0
- Added Smith Note! Untested in multiplayer, expect issues as of right now
- Fixed issue where Moo Cow would make the player moo too much

## 0.5.8
- Made the Giwi fix dependant on Giwi as it breaks all other items

## 0.5.7
- FINALLY ACTUALLY FIXED GIWI

## 0.5.6
- Fixed Giwi Worm eye animation stuttering

## 0.5.5
- Potential fix for Giwi Worm audio and incorrect physics
- Added a config option to disable patches related to Giwi Worm

## 0.5.4
- Potential fix for Giwi Worm audio

## 0.5.3
- Fixed Giwi Worm desyncs
- Fixed Moo Cow player mooing not working properly
- Centered the Moo Cow bounce animation
- Added a button toggle to the Smith Halo to thrust it forwards
- Added a bounce animation to Fixated's Nose
- Added a bunch of debug lines

## 0.5.2
- Fixed Pixel Jars materials being global
- Improved visuals and audio of Smith Halo
- Updated preview image for Smith Halo

## 0.5.1
- Fixed Pixel Jars floaters not working properly
- Fixed Pixel Jars and Moo Cow voice effects not working properly

## 0.5.0
- Added Smith Halo as a shop item! Subject to change, feels undercooked rn
- Gave Moo Cow and Pixel Jars some special voice effects

## 0.4.0
- Added Pixel Jars!
- Adjusted Moo Cow and Giwi Worm's starting positions

## 0.3.0
- Added Moo Cow!
- Further improved Giwi Worm's physics
- Increased Fixated's Nose's durability

## 0.2.1
- Slightly improved Giwi Worm's physics
- Giwi Worm can now be grabbed anywhere on her body
- Made Fixated's Nose more bouncy, and worth more to compensate

## 0.2.0
- Added Giwi Worm!

## 0.1.0
- I lied last update, but NOW the Fixated Nose actually works

## 0.0.2
- Fixed layers, item actually works now

## 0.0.1
- Initial Release