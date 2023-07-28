# 👊 Knucklehead

Knucklehead is a mnemonic, macOS-optimized, 42[^1] key ergo columnar keyboard layout, designed[^2] to ease the transition [back-and-forth] between corne-style and Apple-style keyboards.

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

<img src="img/corneish_zen.svg" alt="minusfive's keymap layout graphical representation" width="100%" />

![minusfive's Corne-ish Zen](img/corneish_zen.png)

> Drawn with [Keymap Drawer](https://github.com/caksoylar/keymap-drawer)

## Legend

> [!NOTE]\
> Incomplete list, still working on documentation.

| Symbol | Key Name                                                                                                                            |
| :----: | ----------------------------------------------------------------------------------------------------------------------------------- |
|   ⌃    | Control                                                                                                                             |
|   ⌥    | Option                                                                                                                              |
|   ⌘    | Command                                                                                                                             |
|   ▲    | ⌃⌥⇧ at once (a.k.a. "Meh")<br/> <small>Not the actual symbol but the closest well supported unicode character I could find.</small> |
|   ⌫    | Backspace                                                                                                                           |
|   ⌦    | Delete                                                                                                                              |
|   ⏎    | Return                                                                                                                              |
|   ⇪    | Caps Lock                                                                                                                           |
|   ⇧    | Shift                                                                                                                               |
|   ⇥    | Tab                                                                                                                                 |
|   ␣    | Space                                                                                                                               |
|  `w`   | Smart `w`ord behavior                                                                                                               |
|  `×`   | Cancel smart `w`ord behavior                                                                                                        |

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

## Mnemonic Affordances

> [!NOTE]\
> Incomplete list, still working on documentation.

| Key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Cue     | Mnemonic Affordance(s)                                                                                                                                          |
| --------------------------------------------------- | ------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ⌘                                                   | `C`     | `C`ommand                                                                                                                                                       |
| ⌘                                                   | `,`     | `Comma`nd                                                                                                                                                       |
| ⌥                                                   | `X`     | shape similarity                                                                                                                                                |
| ⌃                                                   | `A`     | shape similarity, proximity                                                                                                                                     |
| ^                                                   | `A + Z` | shape similarity, proximity                                                                                                                                     |
| ⇥                                                   | `Space` | space multiplier, proximity; also near ⌘ which is combined with for app switching                                                                               |
| `` ` ~ ``                                           | ⇥       | same position, opposite hand; also near ⌘ which is combined with for window switching; typically found near `Tab` on Apple keyboards                            |
| `` ` ~ ``                                           | `H`     | `~` a.k.a. "home" directory on 'nix systems; proximity                                                                                                          |
| `[ {`                                               | `N+H`   | proximity; used to define a `N`ew `H`ash table/map on many programming languages; adjacent to `] }`                                                             |
| `] }`                                               | `E + ,` | proximity; used to `E`nd hash tables/maps on many programming languages; `,` is also typically used to delimit items within hash tables/maps; adjacent to `[ {` |
| `= +`                                               | `E + U` | `E`quals, `U`p (`+`)                                                                                                                                            |
| `- _`                                               | `N + L` | `N`egative, `L`ow                                                                                                                                               |
| `*`                                                 | `S + C` | `S`tar, wild `C`ard                                                                                                                                             |
| `&`                                                 | `R + X` | shape similarity; same position, opposite hand of `\|` (logical `OR`)                                                                                           |
| `\ \|`                                              | `I + .` | shape similarity; logical `OR` — same position, opposite hand of `&` (logical `AND`)                                                                            |
| `\ \|`                                              | `/ ?`   | proximity                                                                                                                                                       |
| ▲                                                   | `M`     | `M`eh                                                                                                                                                           |

### Other Features

- Keys are repositioned in clusters to either "familiar" relative positions, or otherwise logical ones, e.g.
  - `[{` `]}` `\|` `-_` `=+` keys retain their order/position relative to each other on Apple keyboards, but are moved as a cluster to vertical combos more easily accessible to stronger fingers.
  - `;:` is accessible as a combo on a stronger finger, but retains its own relative position to the `'"` key.
  - `1–5` numbers retain their familiar "left, upper-row" position on `Layer 2`; `6–0` are moved to the left hand, though, right below `1–5`. This not only feels natural for single handed numeric typing, but also moves the most used symbols [for programming] to more accessible positions.
  - Symbols are duplicated as combos on `Layer 1` in almost exactly the same position as their corresponding numbers on `Layer 2`, to tap into existing number/symbol associations so you don't have to relearn them nor force disassociation.
  - `Fn`, `Control`, `Option` and `Command` keep their relative Apple keyboard positions, but are moved to "mod-tap" keys on `Layer 1`, and on the same position but as "sticky keys" on `Layer 2`. This allows for easy 2 handed or 1 handed shortcuts.
  - Arrow keys are moved to `Layer 2` on traditional VIM positions.
  - `Tab` and `` `~ `` are moved to inner thumbs on each hand, where their proximity to the `Command` key makes typical App/Window switching a more comfortable, symmetrical "pinch" 🤏 motion.
  - `Fn` key is duplicated on the right/bottom corner, and it activates the `Fn` layer, which has all `F` keys organized in the same position as their corresponding numbers on `Layer 2` (plus 2 extra ones which go where you imagine they would).
  - Bluetooth profile selectors can also be found on the `Fn` layer, as combos aligned with their corresponding numeric positions.
  - Media keys retain almost their relative position, except they're re-arranged a bit so:
    - `volume up / down` align with `+ / -` and `Up / Down` arrows, and `U` ("up") and `L` ("low") keys.
    - `back / forward` align with `Left / Right` arrows.
- A 4th `Meh` modifier is added to the cluster which corresponds to pressing `Control`, `Option` and `Shift` but with a single key, instead of 3. This makes complex shortcuts significantly more comfortable (works great for window managers, app launchers, etc.).
- Minimal and intuitive layer switching with "smart word" behaviors.

## F.A.Q.s

#### Why "Knucklehead"?

> While searching for mnemonic-related names I saw the primary image on the [Wikipedia article for "mnemonic"](https://en.wikipedia.org/wiki/Mnemonic) (a representation of the [Knuckle mnemonic](https://en.wikipedia.org/wiki/Knuckle_mnemonic)), and it occurred to me it'd be a relevant and **_funny_** name (like a slightly more rude version of "a layout for dummies").
>
> The fact that the combos kind of resemble knuckles is just another happy coincidence. Ehrm… I mean, _totally planned_.

#### Why no "home row mods"?

> - I wanted to keep them in the same position across layers without dictating the position of nor interfering with other typically held keys (e.g. arrows).
> - I wanted to diminish their interference with normal/fast typing without over-complicating their implementation, timing configuration, etc. Putting them on "less used" keys helps.
> - Decades of muscle memory for I don't know how many shortcuts across who knows how many apps had me unconsciously reaching for those positions anyway.
> - I feel like the deliberate, paused, "non-rolly" way I tend to use mods makes home position unnecessary.
> - While they don't eliminate hand movement like HMRs, on this new position they still greatly minimize movement/effort, improve comfort when compared to their traditional Apple keyboard position, with the added benefit of leveraging some of your muscle memory.

## Resources

- [Darryl's amazing Corne-ish Zen](https://lowprokb.ca/collections/keyboards/products/corne-ish-zen)
- [ZMK Firmware GitHub](https://github.com/zmkfirmware/zmk)
- [ZMK Documentation](https://zmk.dev/docs)
- [ZMK Discord Server](https://zmk.dev/community/discord/invite)
- [@caksoylar's Keymap Drawer](https://github.com/caksoylar/keymap-drawer), [ZMK config](https://github.com/caksoylar/zmk-config) and [Display improvements for Corne-ish Zen](https://gist.github.com/caksoylar/c411313990978e1903c244f03039187a)
- [@urob's ZMK config](https://github.com/urob/zmk-config/tree/main#user-content-fnref-2-d3679a99d5e7e01f223977affdb47938)
- ["Callum-style Mods"](https://github.com/qmk/qmk_firmware/blob/master/users/callum/readme.md)
- [Colemak-DH](https://colemakmods.github.io/mod-dh/) and the [Effort Grid](https://colemakmods.github.io/mod-dh/model.html)

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
