# v1.1.2

- Fixed `Magnifying Glass` forceposition bug
- `Magnifying Glass` Zoom override adjusted from 20 to 40 (Wizard Time Glass uses 50, it's not that in your face now)
- Added `Logpose`, a compass valuable (planning to add custom code to it in the future)
- Added *4* new song-particle pair to the Headset
- Tweaked one particle because I thought it might be too bright

## v1.1.1

- Fixed an issue for clients about `Magnifying Glass`

### v1.1.0

- Changed fresnel shader on glass to a custom one for `Magnifying Glass`

### v1.0.9

- Fixed `Pickaxe` for singleplayer
- Fixed `Headset` for singleplayer
- `Magnifying Glass`
  - Added custom script
  - Increased values ***300-750 -> 1500-2500***
- `Telescope`
  - Decreased values ***1250-2000 -> 1000-1800***

### v1.0.8

- Headset
  - *new* now the volume only increases for the person who grabs it
  - *new* volume slowly fades back from 0.5 to 0.1 (previously it was just changed suddenly from 0.3 to 0.1 or something, forgor the exact numbers)
  - slightly modified a particle's colour
- Pickaxe
  - moved `ForceGrabPoint` as another attempt of fixing the jittering issue
- Made an attempt to fix and ensure all valuables to spawn correctly
- Added `Chronometer` valuable

### v1.0.7

- Added `Headset` valuable ("press E" on it ^^)
- Cleaned up code
- Hopefully fixed `Pickaxe` jittering
- Changed item `volume types`
  - `Telescope` ***small -> medium***
  - `Magnifying Glass` ***small -> tiny***

### v1.0.6

- Changed `Magnifying Glass`' values ***150-400 -> 300-750***
- Changed `Telescope`'s values ***500-1500 -> 1250-2000***
- Added custom `Pickaxe` script (animations play when you grab it and drop it, nothing too fancy)
- Changed `Max amount` ***1 -> 5***
- Switched to REPOLib from REPOLib-SDK

### v1.0.5

- Fixed `Telescope` getting stuck
- Added `Stopwatch` valuable

### v1.0.4

- Added `Pickaxe` as a buyable `Item`

### v1.0.3

- Renamed my prefabs (my magnifying glass was interfering with LethalCompanyValuables' magnifying glass)
- Resized `Telescope`

### v1.0.2

- Resized `Magnifying Glass` (we are getting there lol)

### v1.0.1

- Changed `Magnifying Glass`'s `Mass` 1.5 -> 0.5 (forgor to change this lel)