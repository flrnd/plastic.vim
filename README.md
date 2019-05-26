![candid.vim](https://github.com/flrnprz/candid-vim/raw/master/candid-screen.png)
# candid.vim
A light & dark vim/neovim color scheme inspired in the awesome [VSCode Plastic](https://github.com/will-stone/plastic) theme.

### Install

Copy `colors/candid.vim` in your `~/.vim/colors` or `~/.config/nvim/colors` directory.

If you want to switch between light and dark theme depending on the time of day
```vim
if strftime('%H') >= 10 && strftime('%H') < 22
  set background=light
else
  set background=dark
endif

syntax on
colorscheme candid
```

#### NOTE
The theme has decent syntax highlight. Only tested with Javascript and golang.

If you want to customize it only need to install [lifepillar/vim-colortemplate](https://github.com/lifepillar/vim-colortemplate) and edit the template files.

#### TODO
* Add A lot of more lang syntax support.
* lightline theme support.
* Better nerdtree support.
* Improve color accessibility.
* Improve html syntax.
* [ ... ]
