# NVIM Apuntes

Información de <https://lazyvim-ambitious-devs.phillips.codes/>

## General

> [!TIP]
> Alt in Insert Mode + any key will execute the key as if it were in normal mode

- C-c / Esc: To normal mode

### Theory

use %source in command to run the new config
[TODO!]
vim.keymap.set()
vim.api
keymaps + config

#### Buffer

Memory space where I can edit, only when I save it impacts the file (Can split with split and vsplit)

#### Tab

#### Window

#### LSP

It is Language Server Protocol, it standardizes the communication between language tooling and code editor. It provides tools such as completion, _hover_, _formatting_, _definitions_</em>, etc

#### Plugin Manager:

Code or program to add to the editor to extend the program

## Search / Replace

- :s/search/replace/ #
- :%s/search/replace: Search and replace global
- :start_line, end_line s/<search>/<replace>
- / and ? : search and after enter move with n and S-n
- #/\* + n/S-n: Search current word after and before
- g+\*: Search part of word

### flash plugin

- s: seek

## Text objects

- w: word
- s: sentence
- p: paragraph
- (: parenthesis

- delete vs change: change ends in insert mode

- df/t [char] : Delete find/to (including or not) character

- cw: Change word since were I am
- caw: Change all word
- ciw: Change inner word (not space)
- cis: Change inner sentence
- cip: Change inner paragraph

## Undo / Redo

- u / C-r -> Undo / Redo

## Copy (Yank) / Cut (Delete) / Put (Paste)

### Copying

- yy: Copy current line
- #yy: Copy # lines
- yiw: Copy current word
- y$/^: Copy to the end/start of line

### Cuting

- dd: Cut current line
- #dd: Cut # lines
- d$/^: Cut to the end/start of line
- diw: Cut current word
- shift+d -> Eliminar resto de linea

### Pasting

- dd: Paste current line
- #dd: Paste # lines
- d$/^: Paste to the end/start of line
- diw: Paste current word

### Moving

- % -> Move to open/close bracket
- Moverme en pantalla -> Ctrl+d/u (down / up)
- Moverme aún más -> Ctrl+f/b (forward / backward)
- Mover la pantalla -> Ctrl+y/e (arriba / abajo)

  > [!TIP] Con un número antes se puede mover # veces lo que se necesite

- Encontrar texto -> _s_
- Moverme mas rápido -> shift+w (W) o shift+b (B)

### Files

- leader+e -> To open the Neo-Tree
- Ctrl+h/l -> To change between Neo-tree and code
- :e path/to/filename -> Open file

- To move line in nvim -> Alt+h/l

- Toggle the terminal -> Ctrl+/
- Next Prev/Tab -> Shift+h/l
- Toggle hidden files in Neo-tree -> Shift+h
- Comment -> gc
- More information -> leader + sk
- Delete single letter -> x

- To use Python with UV -> source .venv/bin/activate.fish
- - to select all matches of word

```bash
#!/bin/bash
echo Hello world
```

```python
print('Hola Mundo')
```

## Chapter 3

- s -> Seek mode: Keep writing until the one that I'm looking IN VISIBLE WINDOW
- f -> Find mode: Find the letter AFTER and keep moving with "f"
- w/e: Move to start/end of next word
- b/ge: Move to start/end of next word
- W/E/B: Move but BIG
- I/A: insert at start/end of line
- o/O: Insert after/before line
- g\_: go to last non-space
- G: go to end of file
- gg: go to start of file
- C-o/i: Move to previous/after jumps

## Chapter 4

LazyVim uses Fzf.lua

> [!TIP]
> space + q + q -> exit from nVIM

- Space + q + q -> Exit NVIM
- find archivos -> Space + Space -> Fuzzy
- C-x (in input) -> Seek mode in the finder
- C-d/u -> Scroll results
- C-f/b -> Scroll preview
