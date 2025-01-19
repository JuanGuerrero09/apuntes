# NVIM Apuntes

Información de <https://lazyvim-ambitious-devs.phillips.codes/>

### Theory 
Buffer:
Tab:
Window:

## Select / Change
- :s/search/replace/ #
- :start_line, end_line s/<search>/<replace>
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
### Pasting
- dd: Paste current line
- #dd: Paste # lines
- d$/^: Paste to the end/start of line
- diw: Paste current word


- Encontrar texto -> _s_
- Moverme mas rápido -> shift+w (W) o shift+b (B)
- Eliminar resto de linea -> shift+d

seek -> Invocado con flash

- Moverme en pantalla -> Ctrl+d/u (down / up)
- Moverme aún más -> Ctrl+f/b (forward / backward)

- Mover la pantalla -> Ctrl+y/e (arriba / abajo)
> [!TIP] Con un número antes se puede mover # veces lo que se necesite

- To open the Neo-Tree -> leader+e
- To change between Neo-tree and code -> Ctrl+h/l

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

## Chapter 4
> ![TIP] Space + q + q -> exit from NVIM
-  Salir de NVIM -> Space + q + q
- Fuzzy find archivos -> Space + Space
