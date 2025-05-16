# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.1.0] - 2025-05-07

### Added

*   **R.E.P.O. Beta Compatibility**:
    *   Full support for **R.E.P.O. Open Beta `0.1.2_22beta`** alongside stable `0.1.2`.
    *   Implemented dynamic game version detection (`GameVersionSupport.cs`) to correctly interface with different `SteamManager.UnlockLobby()` signatures (parameterless for stable, `UnlockLobby(bool open)` for beta). This ensures proper Steam lobby visibility control across game versions.
*   **Museum Map (`Module`) Support**:
    *   Introduced synchronization for `Module` components (`LateJoinManager.SyncModuleConnectionStatesForPlayer`).
    *   Late joiners will now correctly see the connection states (Top, Bottom, Left, Right, First) of map modules, crucial for new maps like "Museum" that utilize this system. This is achieved by re-sending the `ModuleConnectionSetRPC` to the joining player.
    *   Added reflection helpers for `Module` fields (`SetupDone`, `ConnectingTop`, etc.) in `Utilities.cs`.
*   **Early Lobby Locking Mechanism**:
    *   The game lobby is now locked earlier during level transitions initiated from the truck screen (e.g., when "Start Game" or "Return to Lobby with Loot" is confirmed).
    *   This is achieved by new prefix patches on `TruckScreenText.PlayerChatBoxStateLockedDestroySlackers` and `TruckScreenText.PlayerChatBoxStateLockedStartingTruck`.
    *   This proactive locking (`EarlyLobbyLockHelper.TryLockLobby`) prevents players from joining during potentially unstable mid-transition phases, before `RunManager.ChangeLevel` fully manages the lobby state.
*   **Lobby Unlock Failsafe**:
    *   Implemented a coroutine-based failsafe (`Patches.LobbyUnlockFailsafeCoroutine`) to ensure the game lobby unlocks if the intended mechanism (via `GameDirector.SetStart`) is prevented from running (e.g., due to another mod's interference).
    *   If the lobby is meant to be open but remains locked after a timeout, the failsafe will force it open. This is armed during `RunManager_ChangeLevelHook_Postfix` and disarmed by `GameDirector_SetStart_Postfix`.
*   **Configurable Lobby Lock on Level Generation Failure**:
    *   Added a new configuration option: `Lock Lobby On Level Generation Failure` (Default: `true`) under the "Late Join Behavior" section.
    *   When `true` (default), if a level reports a generation failure (and doesn't transition to the Arena), the lobby will be locked, preventing late joins.
    *   When `false`, if a modded level reports a generation failure but the game continues (i.e., doesn't crash to Arena), L.A.T.E. will still evaluate normal scene-based join rules (Shop, Truck, Level) as if the failure didn't occur. This can be useful for modded levels that might incorrectly flag a failure but still load. This setting does not affect true failures that lead to the Arena scene.

### Changed

*   **Enhanced Hinge/Door Synchronization**:
    *   Improved synchronization for `PhysGrabHinge` objects (e.g., doors, lockers, cabinets).
    *   In addition to the existing `broken` state sync (`HingeBreakRPC`), the mod now also syncs the **open/closed** state for late joiners using the `PhysGrabHinge.closed` field and `OpenImpulseRPC`. (Ref: `DestructionManager.SyncHingeStatesForPlayer`)
    *   This provides a more consistent visual and interactive state for these objects.
*   **Lobby Open/Close Logic Refinement**:
    *   The `Patches.ShouldAllowLobbyJoin` logic now uses direct `RunManager` level instance comparisons (e.g., `runManager.levelCurrent == runManager.levelArena`) instead of relying solely on `SemiFunc` helper methods. This offers more precise control over lobby joinability based on the current scene, especially during level transitions.
    *   `GameDirector.SetStart` (postfix patch) is now the definitive point for unlocking the lobby after level generation and loading, if conditions permit. It also handles disarming the new lobby unlock failsafe.
*   **Mod Incompatibility Documentation**:
    *   Updated `README.md` to reflect successful testing and support for R.E.P.O. `0.1.2_22beta`.
    *   Added new known mod incompatibilities to `README.md`:
        *   `FastStartup`
        *   `Imperium_Repo` (due to patching `LevelAnimationCompleted`)

### Fixed

*   **Resolved `BerserkerEnemies` Incompatibility**: Addressed a previous incompatibility with `BerserkerEnemies` that could cause issues with level generation completion hooks (e.g., preventing L.A.T.E.'s `GameDirector.SetStart` postfix from running).
    *   This was fixed by adjusting Harmony patch execution order, specifically by applying `[HarmonyPriority(Priority.Last)]` to L.A.T.E.'s `GameDirector_SetStart_Postfix` and `PlayerAvatar_LoadingLevelAnimationCompletedRPC_Prefix` patches.
    *   This ensures L.A.T.E.'s critical lobby management and synchronization logic executes after potentially conflicting modifications from other mods that hook into the same game methods.

## [1.0.0] - 2025-05-05

**Initial Release**

### Added

*   Core functionality allowing players to join games already in progress (Late Joining).
*   **Host-Only** operation: Mod logic runs entirely on the host.
*   Configuration options (`BepInEx/config/LATE.cfg`):
    *   Enable/disable joining in Shop, Truck, Level, Arena scenes.
    *   Option to re-kill players who died before leaving/rejoining the same level instance (`Kill If Previously Dead`).
    *   Option to spawn rejoining players at their last known position or death head (`Spawn At Last Position`).
    *   Advanced option to force a level reload for everyone on late join (`Force Level Reload on Late Join`).
    *   Configurable log level for debugging (`Log Level`).
*   Comprehensive state synchronization for late joiners:
    *   Level state (`RunManager`: level name, completion status, game over).
    *   Level generation completion (`LevelGenerator`).
    *   Extraction Point state (`ExtractionPoint`: state, goal fetched, current goal value, surplus value, shop status, active/inactive status).
    *   Valuable Objects (`ValuableObject`: current dollar value).
    *   Shop Items (`ItemAttributes`: current value).
    *   Player Death Status (`PlayerStateManager`, `PlayerAvatar.PlayerDeathRPC`).
    *   Truck Screen (`TruckScreenText`: initialization, current page).
    *   Prop Switch setup trigger (`ValuableDirector`).
    *   Destroyed Physics Objects (`PhysGrabObject.DestroyPhysGrabObjectRPC`).
    *   Destroyed Impact Objects (`PhysGrabObjectImpactDetector.DestroyObjectRPC`).
    *   Broken Hinges (`PhysGrabHinge.DestroyHingeRPC`, `HingeBreakRPC`).
    *   Item States via specific RPCs:
        *   `ItemToggle`: `ToggleItemRPC` (On/Off), `ToggleDisableRPC` (Interactable).
        *   `ItemBattery`: `BatteryFullPercentChangeRPC`.
        *   `ItemMine`: `StateSetRPC`.
        *   `ItemMelee`: `MeleeBreakRPC`, `MeleeFixRPC`.
        *   `ItemDrone`: `ButtonToggleRPC`.
        *   `ItemHealthPack`: `UsedRPC`.
        *   `ItemGrenade`: `TickStartRPC`.
        *   `ItemTracker`: `SetTargetRPC`.
    *   Enemy synchronization:
        *   Spawn/Despawn status via `EnemyParent` (`SpawnRPC`, `DespawnRPC`).
        *   Target Player View ID (`Enemy.TargetPlayerViewID`, `UpdatePlayerTargetRPC`, etc.).
        *   Frozen status (`Enemy.FreezeRPC`).
        *   Specific states/targets for numerous enemy types (Animal, Bang, Beamer, etc. - see README for full list).
        *   Notifies enemies when players join (`PlayerAdded`) or leave (`PlayerRemoved`).
    *   Arena-specific state (`Arena`): `DestroyCrownCageRPC`, `CrownGrabRPC` (Winner), `PlayerKilledRPC` (Pedestal Count).
    *   Voice chat state initialization (`VoiceManager`, `PlayerAvatar.UpdateMyPlayerVoiceChat`).
*   Player Position Tracking (`PlayerPositionManager`) for `Spawn At Last Position` feature.
*   Patching Mechanisms:
    *   Uses HarmonyLib (Attribute and Explicit patches) and MonoMod Hooks.
    *   Patches `NetworkManager`, `RunManager`, `PlayerAvatar`, `PhysGrabObject`, `PhysGrabObjectImpactDetector`, `PhysGrabHinge`, `EnemyVision`, `EnemyTriggerAttack`, `NetworkConnect`, `GameDirector`.
*   Utilities class (`Utilities`) for caching reflected members and helper functions.
*   Fix for potential `EnemyVision` dictionary errors when late joiners trigger vision/attacks.
*   Forces `PhotonNetwork.AutomaticallySyncScene = true` early for joining clients via `NetworkConnect` patch.
*   Extraction Point Item Resync: Teleports items in the EP out and back to force clients to re-evaluate their state (addresses potential value desync).