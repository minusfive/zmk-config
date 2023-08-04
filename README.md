# 👊 Knucklehead

Knucklehead is a mnemonic, macOS-optimized, 42[^1] key ergo columnar keyboard layout, designed[^2] to ease the transition [back-and-forth] between corne-style and Apple-style keyboards.

---

> [!WARNING]\
> Under **_active development_**, expect changes. Scarce/incomplete documentation. Use at your own risk.

> [!NOTE]\
> This layout was primarily **designed for [Colemak-DH](https://colemakmods.github.io/mod-dh/)** and influenced by decades of muscle memory using ANSI Apple keyboards.
>
> By request I've started working on other alpha layouts. such as:
>
> - [QWERTY](/minusfive/zmk-config/tree/QWERTY)
> - [Colemak](/minusfive/zmk-config/tree/Colemak)
>
> But keep in mind that while many of the mnemonic affordances will work well regardless of layout, many others will be "lost in translation".

---

<img src="img/corneish_zen.svg" alt="minusfive's keymap layout graphical representation" width="100%" />

![minusfive's Corne-ish Zen](img/corneish_zen.png)

> Drawn with [Keymap Drawer](/caksoylar/keymap-drawer)

## Legend

| Symbol | Key Name                                                      |
| :----: | ------------------------------------------------------------- |
|   ⌃    | Control                                                       |
|   ⌥    | Option                                                        |
|   ⌘    | Command                                                       |
|   ⇧    | Shift                                                         |
|   ⇪    | Caps Lock                                                     |
|   ▲    | ⌃⌥⇧ at once (a.k.a. "Meh")                                    |
|   ⌫    | Backspace                                                     |
|   ⌦    | Delete                                                        |
|   ⏎    | Return                                                        |
|   ⇥    | Tab                                                           |
|   ␣    | Space                                                         |
|  `w`   | [Smart `w`ord behavior](#smart-word-behaviors)                |
|  `×`   | [E`x`it smart `w`ord behavior](#exiting-smart-word-behaviors) |
|  `L1`  | Layer 1                                                       |
|  `L2`  | Layer 2                                                       |
|  `Fn`  | Function Layer                                                |

<!--  | ⌽         | power       | -->
<!--  | ⏏         | eject       | -->
<!--  | ⌤         | enter       | -->
<!--  | ⇭         | num lock    | -->
<!--  | ⇱         | home        | -->
<!--  | ⇲         | end         | -->
<!--  | ⇞         | page up     | -->
<!--  | ⇟         | page down   | -->
<!--  | ↑         | up arrow    | -->
<!--  | ⇡         | up arrow    | -->
<!--  | ↓         | down arrow  | -->
<!--  | ⇣         | down arrow  | -->
<!--  | ←         | left arrow  | -->
<!--  | ⇠         | left arrow  | -->
<!--  | →         | right arrow | -->
<!--  | ⇢         | right arrow | -->
<!--  | ⌧         | clear       | -->

## Features

### Mnemonic Affordances

> [!IMPORTANT]\
> These are in the context of the (default) Colemak-DH layout.
> Many will be lost in translation when using other alpha layouts.

<!-- &nbsp;s force column width and prevent unwanted breaks -->

| Key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Cue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Mnemonic&nbsp;Affordance(s)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                  |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **⌘**                                                                                                     | `C` or `,`                                                                                                                              | `C`ommand, `Comma`nd                                                                                                                                                                                           |
| **⌥**                                                                                                     | `X`                                                                                                                                     | shape similarity                                                                                                                                                                                               |
| **⌃**                                                                                                     | `A`                                                                                                                                     | shape similarity, proximity                                                                                                                                                                                    |
| **^**                                                                                                     | `A + Z`                                                                                                                                 | (Caret) shape similarity, proximity                                                                                                                                                                            |
| **▲**                                                                                                     | `M`                                                                                                                                     | `M`eh                                                                                                                                                                                                          |
| **⇥**                                                                                                     | **␣** or **⌘**                                                                                                                          | space multiplier, proximity; also near **⌘** which is combined with for app switching                                                                                                                          |
| `` ` ~ ``                                                                                                 | `H`, **⇥** or **⌘**                                                                                                                     | `~` a.k.a. "home" directory on 'nix systems; proximity. Same position, opposite hand as **⇥**, typically found near each other on Apple keyboards; also near **⌘** which is combined with for window switching |
| `[ {`                                                                                                     | `N+H`                                                                                                                                   | proximity; used to define a `N`ew `H`ash table/map on many programming languages; adjacent to `] }`                                                                                                            |
| `] }`                                                                                                     | `E + ,`                                                                                                                                 | proximity; used to `E`nd hash tables/maps on many programming languages; `,` is also typically used to delimit items within hash tables/maps; adjacent to `[ {`                                                |
| `= +`                                                                                                     | `E + U`                                                                                                                                 | `E`quals, `U`p (`+`)                                                                                                                                                                                           |
| `- _`                                                                                                     | `N + L`                                                                                                                                 | `N`egative, `L`ow                                                                                                                                                                                              |
| `*`                                                                                                       | `S + C`                                                                                                                                 | `S`tar, wild `C`ard                                                                                                                                                                                            |
| `&`                                                                                                       | `R + X`                                                                                                                                 | shape similarity; logical `AND` — same position, opposite hand as `\|` (logical `OR`)                                                                                                                          |
| `\ \|`                                                                                                    | `I + .` or `/ ?`                                                                                                                        | shape similarity, proximity; logical `OR` — same position, opposite hand as `&` (logical `AND`)                                                                                                                |
| `! @ # $ %`<br/>`^ & * ( )`                                                                               | `1 – 5`<br/>`6 – 0`                                                                                                                     | symbols maintain their standard ANSI association with numbers; replicated as combos on `L1` retaining position relative to numbers on `L2`                                                                     |
| **⇪**                                                                                                     | **⇧**                                                                                                                                   | same position as ⇧ but on `Fn` layer                                                                                                                                                                           |

---

### Smart `w`ord Behaviors

A smart word behavior is one where, to perform an action for which you would normally `hold` a key, you're only required to `tap` it at the beginning of a sequence to "enter" that special mode, and you remain in that mode until you press a key not in the defined "continue-list" (a "break-word" key, like **␣** [space]), **_or_** until you explicitly "exit" (or "cancel") that mode.

The most common example of this type of behavior is [ZMK's `&caps_word`](https://zmk.dev/docs/behaviors/caps-word) (or [QMK's](https://docs.qmk.fm/#/feature_caps_word)).

This layout uses 2 smart word behaviors (marked with the `w` symbol):

> [!IMPORTANT]\
> Both of these were taken from [@urob's fantastic layout](/urob/zmk-config), and use his [ZMK fork](/urob/zmk) which include a couple of (popular, but yet-to-be-merged) PRs to ZMK necessary for this to work.

#### Smart Shift

The right hand middle thumb **⇧** (shift) key will act as follows:

| Action&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Effect                                                                                                                                                                                                                                                             |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hold`                                                                               | Normal "shift" behavior.                                                                                                                                                                                                                                           |
| `tap`                                                                                | [Sticky "shift" behavior](https://zmk.dev/docs/behaviors/sticky-key) (i.e. will apply a "shift" modification to the next key pressed within 1s). Useful when capitalizing words at the beginning of sentences without holding the key (for example).               |
| `double-tap`                                                                         | `&caps_word`, i.e. retains "shift" behavior until a character not in the "[continue-list](https://zmk.dev/docs/behaviors/caps-word#continue-list)" is pressed. Useful for ALL_CAPS word sequences, like conventional constant names on some programming languages. |
| `Fn` + `tap`                                                                         | **⇪** (CAPS LOCK).                                                                                                                                                                                                                                                 |

#### Smart L2 Layer

Both inner thumbs (marked as `L2` on `L1`) will act as follows:

| Action&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Effect                                                                                                                                                                                                                                                                                                   |
| ------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `hold`                                                                               | Normal [`&mo` "momentary layer"](https://zmk.dev/docs/behaviors/layers#momentary-layer) behavior.                                                                                                                                                                                                        |
| `tap`                                                                                | [Sticky layer behavior](https://zmk.dev/docs/behaviors/sticky-layer), i.e. will switch to `L2` until the next key pressed (within 1s), and immediately exit back to `L1`. Useful to use single-handed sticky modifiers, entering a single number, single arrow movements, single media key actions, etc. |
| `double-tap`                                                                         | Stays on `L2` while numbers or arrows are pressed, or `, . / - _ + = *` ⌫ or ⌦ are pressed. Useful when entering longer numeric sequences, math operations, repetitive arrow navigation, etc.                                                                                                            |

#### E`x`iting Smart `w`ord Behaviors

Sometimes you may enter a smart behavior by accident, or may need to cancel it to accommodate special use cases. For these situations there are special "cancel" keys, marked with an `x`:

On `L1` and `L2` the right-most `x` key (top row, right hand) will cancel any smart word behavior, so it will exit `&caps_word`, and/or exit `L2`'s smart layer behavior and bump you back to `L1`.
It's positioned to mirror the traditional `ESC` key since it's another type of "escape".

On `L2` the same thumb keys you use to summon it will act as follows:

| Action&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Effect                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `tap`                                                                                | Will exit the smart layer behavior and bump you back to `L1`. (It will also cancel `&caps_word`, so it can be used for that as well; from `L1` this would technically be a `triple-tap`, so the top-right `x` key is more convenient)                                                                                                                                                                                                                            |
| `hold`                                                                               | Will also exit the smart layer behavior, but will immediately enter the normal [`&mo` "momentary layer"](https://zmk.dev/docs/behaviors/layers#momentary-layer) behavior as well and remain on `L2`, so as long as you keep holding it you shouldn't see a difference, but as soon as you let go you'll be bumped back to `L1`.<br/><br/>I implemented this to account for accidental "muscle memory" hold actions, making it more forgiving and less confusing. |

---

### Non-Stacking Layers

One of [ZMK's great features is its stacking layers system](https://zmk.dev/docs/features/keymaps#layers).
These can be amazing for things like multiple "active" base layers for different alphas layouts and such, while sharing a common set of "momentary" layers.
However, unless you really understand this behavior and explicitly wish to use it, it may become really confusing really quickly, and make you feel lost in a layer maze.

Since the aim of this keymap is to meet newcomers half-way (specifically those transitioning from Apple keyboards), and make it as intuitive as possible, this behavior is specifically avoided in a few ways:

> [!NOTE]\
> If this all sounds like gibberish to you here's all you need to understand: `L1` should always be the layer behind `L2` or `Fn`. If that's not the case, please [report it as a bug](/minusfive/zmk-config/issues).

#### Single Base Layer

`L1` is the one true base layer. There is no way to permanently activate any other layer, only momentary (`&mo`), sticky (`&sl`), and [smart layer](#smart-l2-layer) behaviors are used.

#### Pre-Canceled Layer Switching (Upper Layer "Swapping")

Additionally, in order to prevent even momentary layer stacking, a "cancel" (`x`) event is triggered in some circumstances prior to switching to a layer, so that you're first bumped back down to `L1` before switching to the desired layer.
This all happens transparently without delay, so from your perspective you just "swapped" upper layers, instead of stacking them.
This ensures any transparent keys in that upper layer will fall through to `L1`, and sticky timeouts will bump you back to `L1` immediately, as you would expect.
These special cases are marked with the same `x` symbol.

**Without this behavior**, for example, it might've been confusing if you pressed the `Fn` key while on `L2`'s smart layer mode, and pressed a transparent key expecting an `L1` keycode when instead you get an `L2`.

---

### Other Features

Keys are repositioned in clusters to either "familiar" relative positions, or otherwise logical ones, using ANSI Apple keyboards as a reference, e.g.

- `[{` `]}` `\|` `-_` `=+` keys retain their order/position relative to each other, but are moved as a cluster to vertical combos more easily accessible to stronger fingers.
- `;:` is accessible as a combo on a stronger finger, but retains its own relative position to the `'"` key.
- `1–5` numbers retain their familiar "left, upper-row" position on `Layer 2`; `6–0` are moved to the left hand, though, right below `1–5`. This not only feels natural for single handed numeric typing, but also moves the most used symbols [for programming] to more accessible positions.
- Symbols are duplicated as combos on `Layer 1` in almost exactly the same position as their corresponding numbers on `Layer 2`, to tap into existing number/symbol associations so you don't have to relearn them nor force disassociation.
- `Fn`, `Control`, `Option` and `Command` keep their relative Apple keyboard positions, but are moved to "mod-tap" keys on `Layer 1`, and on the same position but as "sticky keys" on `Layer 2`. This allows for easy 2 handed or 1 handed shortcuts.
- Arrow keys are moved to `Layer 2` on traditional VIM positions.
- **⇥** and `` `~ `` are moved to inner thumbs on each hand, where their proximity to the `Command` key makes typical App/Window switching a more comfortable, symmetrical "pinch" 🤏 motion.
- `Fn` key is duplicated on the right/bottom corner, and it activates the `Fn` layer, which has all `F` keys organized in the same position as their corresponding numbers on `Layer 2` (plus 2 extra ones which go where you imagine they would).
- Bluetooth profile selectors can also be found on the `Fn` layer, as combos aligned with their corresponding numeric positions.
- Media keys retain almost their relative position, except they're re-arranged a bit so:
  - `volume up / down` align with `+ / -` and `Up / Down` arrows, and `U` ("up") and `L` ("low") keys.
  - `back / forward` align with `Left / Right` arrows.

A 4th `Meh` modifier is added to the cluster which corresponds to pressing `Control`, `Option` and `Shift` but with a single key, instead of 3. This makes complex shortcuts significantly more comfortable (works great for window managers, app launchers, etc.).

---

## F.A.Q.s

#### Why "Knucklehead"?

While searching for mnemonic-related names I saw the primary image on the [Wikipedia article for "mnemonic"](https://en.wikipedia.org/wiki/Mnemonic) (a representation of the [Knuckle mnemonic](https://en.wikipedia.org/wiki/Knuckle_mnemonic)), and it occurred to me it'd be a relevant and **_funny_** name (like a slightly more rude version of "a layout for dummies").
The fact that the combos kind of resemble knuckles is just another happy coincidence. Ehrm… I mean, _totally planned_.

#### Why no "home row mods"?

- I wanted to keep them in the same position across layers without dictating the position of nor interfering with other typically held keys (e.g. arrows).
- I wanted to diminish their interference with normal/fast typing without over-complicating their implementation, timing configuration, etc. Putting them on "less used" keys helps.
- Decades of muscle memory for I don't know how many shortcuts across who knows how many apps had me unconsciously reaching for those positions anyway.
- I feel like the deliberate, paused, "non-rolly" way I tend to use mods makes home position unnecessary.
- While they don't eliminate hand movement like HMRs, on this new position they still greatly minimize movement/effort, improve comfort when compared to their traditional Apple keyboard position, with the added benefit of leveraging some of your muscle memory.

---

## Resources

- [ZMK Firmware GitHub](/zmkfirmware/zmk)
- [ZMK Documentation](https://zmk.dev/docs)
- [ZMK Discord Server](https://zmk.dev/community/discord/invite)
- [@caksoylar's Keymap Drawer](/caksoylar/keymap-drawer), [ZMK config](/caksoylar/zmk-config) and [Display improvements for Corne-ish Zen](https://gist.github.com/caksoylar/c411313990978e1903c244f03039187a)
- [@urob's ZMK config](/urob/zmk-config)
- ["Callum-style Mods"](/qmk/qmk_firmware/blob/master/users/callum/readme.md)
- [Colemak-DH](https://colemakmods.github.io/mod-dh/) and the [Effort Grid](https://colemakmods.github.io/mod-dh/model.html)
- [Darryl's amazing Corne-ish Zen](https://lowprokb.ca/collections/keyboards/products/corne-ish-zen)

---

> [!IMPORTANT]\
> Content below was inherited from the default Corne-ish Zen ZMK configuration repository, which is where this repo was forked from. It still needs to be updated, but leaving it here for now because it's still relevant.

## Customization Instructions

1. Edit the keymap file(s):
   - Change [the keymap file](/config/corneish_zen.keymap) to edit keycodes, add new layers etc.
   - Change [the conf file](/config/corneish_zen.conf) to edit configuration settings like changing the deep sleep timeout
2. Commit and push. GitHub Actions will start building a new version of the firmware with the updated keymap and drawing.

## Firmware Files

To locate your firmware files...

1. Click "Actions" in the main navigation, and in the left navigation click the "Build" link.
2. Select the desired workflow run in the centre area of the page (based on date and time of the build you wish to use). You can also start a new build from this page by clicking the "Run workflow" button.
3. After clicking the desired workflow run, you should be presented with a section at the bottom of the page called "Artifacts". This section contains the results of your build, in a file called "firmware.zip"
4. Download the firmware zip archive and extract the two `.uf2` files. They are named according to which side they need to be flashed to.
5. Flash the firmware to your keyboard by double-clicking the reset button to put the it in bootloader mode. A window should pop up showing the contents of the storage on the keyboard. Drag and drop the correct `.uf2` file into the window. When the upload is complete the window will close and the keyboard will exit bootloader mode.
   - If you only changed [the keymap file](/config/corneish_zen.keymap) you only need to flash the left side firmware to the left side.
   - If you changed [the conf file](/config/corneish_zen.conf) you should flash both sides their respective files.

Your keyboard is now ready to use.

[^1]: Currently 42 keys because that's what I use, but honestly sometimes I feels like I have a few keys I don't know what to do with; though I often go back to re-adding them when I try removing them, so :shrug:. May make it work for other boards in the future, but may not be a priority for a while. No promises.
[^2]: Well, "designed" is perhaps too strong a word. I've haphazardly and painfully iterated over dozens of permutations, gradually removing annoyances / disruptions to my flow.
