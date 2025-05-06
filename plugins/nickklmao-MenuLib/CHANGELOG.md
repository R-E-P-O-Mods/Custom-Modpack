# v2.4.1
- Updated `REPOInputField` and `REPOSlider` to allow lowercases characters by default

# v2.4.0
- Added `REPOPopupPage.onEscapePressed (bool ShouldCloseMenuDelegate)`
  - If true is returned then the menu will be closed, otherwise the menu remains open
  - If this field is null, the menu closes by default
- Added `REPOInputStringSystem` which provides necessary functionality for handling input
  - The biggest downside is a lack of caret position (arrow keys) and highlighting
  - CTRL + C copies the current text to your clipboard
  - CTRL + X copies the current text to your clipboard and clears the text field
  - CTRL + V pastes your clipboard to the end of the text field
- Added `REPOInputField`
  - Uses `REPOInputStringSystem` to create an input field element that has a label
- Fixed scrollbar scrolling, there's no longer a weird deadzone when scrolling from the top
- Fixed W/S keys from scrolling extremely quickly

# v2.3.0
- Added `REPOPopupPage.closeMenuOnEscape` (defaults to `true`)
  - When `false` the menu won't close when the escape key is pressed
- Added `REPOAvatarPreview.previewSize` to modify the mask size
- Added `REPOObjectPreview`
  - A custom version of the `REPOAvatarPreview` but for GameObjects

# v2.2.0
- Added `MenuAPI.AddElementToSettingsMenu`
- Added `MenuAPI.AddElementToColorMenu`
- Fixed README having inaccurate comments

# v2.1.3
- Added `REPOScrollView.scrollSpeed` (Can be null)
  - If null, the scrolling acts as normal, interpolated between local positions
  - If non-null value, the scrolling will be at a constant rate
- Added `REPOScrollView.SetScrollPosition(float normalizedPosition)`
  - This will set the scroll view & scroll bar to a specific position
  - This value is normalized, 0 represents the top of the page while 1 represents the bottom
- Fixed `REPOAvatarPreview.OnDestroy` from throwing a null reference exception (again)

# v2.1.2
- Fixed `REPOAvatarPreview.OnDestroy` from throwing a null reference exception
- Fixed `REPOScrollView` from not updating when setting the `spacing` property post-creation
- Added `REPOPopupPage.pageDimmerOpacity` (Range: 0f - 1f)
- Scroll views now update when you're not hovering over them
  - This resolved some weird issues with dynamically adding items
- `REPOScrollViewElement.OnRectTransformDimensionsChange` will now update the parent `REPOScrollView` layout
  - This should fix issues with custom TMP rich text sizes

# v2.1.1
- Fixed REPOPopupPage parameters (they were backwards)
- Fixed an issue causing custom REPOPopupPage sizes to break cached pages
- Updated REPOTextScroller to fetch a TMP component if its missing one
  - It only checks the object it was added to
- Added `overrideButtonSize` to REPOButton
  - This will force a custom size rather than using the label size

# v2.1.0
- Scrollbar positions get updated when setting a page's mask padding
- Added cached pages
  - This prevents you from having to regenerate your menu constantly
    - You can only set this via the `MenuAPI.CreateREPOPage` method
- Added 'Action onClick' to REPOButton
- Added 'REPOAvatarPreview'
- Pressing escape goes back one page now

# ***v2.0.0 - THE REWRITE***
- You can now add buttons to the menu lobby
- Upgraded scroll boxes
  - Elements out of view will be disabled automatically to reduce lag
  - Fixed scroll boxes from not scrolling down all the way
  - Removed rebinding UI for keybinds (This could return later)
    - You can still change the keybind, it'll just be an option slider instead
- Switched to all custom monobehaviours
  - Introduces REPOLabel, REPOButton, & REPOSpacer
  - This gives you almost full control over your elements
- **Plus a lot more**

# v1.0.5
- Added new method `SetBarState` to REPOSlider
  - Changes the behavior of the background bar (UpdateWithValue, StaticMinimum, StaticMaximum)
  - This would typically be used for `Enum` types

# v1.0.4
- Changed slider increment buttons to only increment by 1
  - This depends on how precise your slider is

# v1.0.3
- Added keybind support (UnityEngine.InputSystem.Key)
- Made slider descriptions scroll
- Migrated OpenDialog from the `REPOButton` to the `MenuAPI`

# v1.0.2
- Fixed label size for toggles

# v1.0.1
- Added option support to sliders
  - Rather than displaying a number, words can be displayed

# v1.0.0 🔥
- Initial release