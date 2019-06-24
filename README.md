![plastic.vim](https://github.com/flrnprz/plastic.vim/blob/master/plastic-vim-screen.png)

# plastic.vim

[VSCode Plastic](https://github.com/will-stone/plastic) theme port for vim/neovim.

## Install

1. Using your plugin manager of choice and placing `flrnprz/plastic.vim` in your .vimrc file.
   or
2. clone this directory into your vim/plugged directory

```vim
set background=dark
syntax on
colorscheme plastic

" Lightline
let g:lightline = { 'colorscheme': 'plastic' }
```

#### NOTE

The theme has decent syntax highlight.
Removed the Light theme in order to create a separate project. Also I renamed it back to `plastic.vim` in
honor to the original VS Code theme.

Added Lightline support.

~~if you want to customize it only need to install [lifepillar/vim-colortemplate](https://github.com/lifepillar/vim-colortemplate) and edit the template files.~~
The colorscheme no longer use colortemplate.

#### TODO

- Add A lot of more lang syntax support.
- ~~lightline theme support.~~
- ~~Better nerdtree support.~~
- ~~Improve color accessibility.~~
- ~~Improve html syntax.~~
- [ ... ]
