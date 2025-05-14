# Keymap

Please go through the Tutor of Neovim(By enter `:Tutor`) if you want to learn the basics.

Tips: Learn the patterns insead of EVERYTHING

## Patterns

```
    operator [number] motion
```

where:
- operator: what you want to do, such as `d` for delete
- number: optional count to repeat the motion 
- motion: moves over the text to operate on, such as `w` for word and `$` for to the end of line


## Move your cursor - [ Normal / Visual ]
- `h` move right 
- `j` move down
- `k` move up
- `l` move right

- `w`/`b` jump to the start of next/previous word
- `W`/`B` jump to the start of next/previous block(separated by space)
- `e` jump to the end of next word
- `E` jump to the end of next block(separated by space)

- (`[`/`]`)+`e` jump to next/previous error 
<!-- - (`[`/`]`)+`a` jump to next/previous parameter -->
- (`[`/`]`)+`d` jump to next/previous diagnostic

- `gg` jump to the first line
- `G` jump to the last line

- `{`/`}` jump to the start of previous/next paragraph

- (`f`/`F`)+`{char}` find the char after/before the cursor
    - then `f`/`F` jump to the next/previous one
- `s`+`{prefix you what to search}` search prefix
    - then the targets places will be labelled as ordered keys
    - type one of them to jump to that place
- (`?`/`/`)+`{content}` search the content after/before the cursor
    - then `n`/`N` jump to the next/previous one

- `{integer}`+`{move/jump keys}` : move/jump by a specific quantity
- `{abs line number}`+`G` : jump to the specific line


- `0`/`$` jump to the start/end of the line
- `%` jump to the paired parenthase

## Edit it! [ Normal ]
Press these keys to enter Insert mode, with a cursor at somewhere
- `i`  jump to the place before the cursor
- `a`  jump to the place after the cursor
- `I`/`A` jump to the start/end of the line
- `o`/`O` add a new line next/previous line
- `r` Replace current content with a char
- `c` Change content


## Delete it!
- `ciw` Change Inside Word
- `diw` Delete Inside Word

## More

- `p`/`P` Put content that you deleted/yanked on next/previous line
