" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" All your bundles here

" Other languages
Bundle "scrooloose/syntastic"
Bundle "pangloss/vim-javascript"
Bundle "othree/javascript-libraries-syntax.vim"
Bundle "chase/vim-ansible-yaml"

" GoLang
Bundle "fatih/vim-go"

" Markdown...
Bundle "jtratner/vim-flavored-markdown.git"
Bundle "nelstrom/vim-markdown-preview"

" Git related...
Bundle "gregsexton/gitv"
Bundle "mattn/gist-vim"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-git"

" General text editing improvements...
"Bundle "AndrewRadev/splitjoin.vim"
"Bundle "Raimondi/delimitMate"
"Bundle "Shougo/neocomplcache.git"
"Bundle "briandoll/change-inside-surroundings.vim.git"
"Bundle "godlygeek/tabular"
Bundle "skwp/vim-easymotion"
"Bundle "tomtom/tcomment_vim.git"
"Bundle "tpope/vim-bundler"
"Bundle "vim-scripts/camelcasemotion.git"
"Bundle "vim-scripts/matchit.zip.git"
"Bundle "terryma/vim-multiple-cursors"
Bundle "reedes/vim-wordy"

" Tabbable snippets
Bundle "garbas/vim-snipmate.git"
Bundle "honza/vim-snippets"

" Search
Bundle "rking/ag.vim"
Bundle "tjennings/git-grep-vim"

" General vim improvements
Bundle "scrooloose/nerdtree"
Bundle "fholgado/minibufexpl.vim"
"Bundle "chrisbra/NrrwRgn"
Bundle "MarcWeber/vim-addon-mw-utils.git"
"Bundle "bogado/file-line.git"
"Bundle "majutsushi/tagbar.git"
"Bundle "mattn/webapi-vim.git"
"Bundle "scrooloose/syntastic.git"
"Bundle "sjl/gundo.vim"
"Bundle "skwp/YankRing.vim"
"Bundle "skwp/greplace.vim"
Bundle "tomtom/tlib_vim.git"
"Bundle "tpope/vim-abolish"
"Bundle "tpope/vim-endwise.git"
"Bundle "tpope/vim-ragtag"
"Bundle "tpope/vim-repeat.git"
"Bundle "tpope/vim-surround.git"
"Bundle "tpope/vim-unimpaired"
"Bundle "vim-scripts/AnsiEsc.vim.git"
"Bundle "vim-scripts/AutoTag.git"
"Bundle "vim-scripts/lastpos.vim"
"Bundle "vim-scripts/sudo.vim"
"Bundle "xsunsmile/showmarks.git"
"Bundle "terryma/vim-multiple-cursors"
Bundle "rbgrouleff/bclose.vim"
Bundle "kien/ctrlp.vim"

" Session Management
"vim-misc is required for vim-session
Bundle "xolox/vim-misc"
Bundle "xolox/vim-session"
Bundle "Keithbsmiley/investigate.vim"

" Text objects
"Bundle "austintaylor/vim-indentobject"
"Bundle "bootleq/vim-textobj-rubysymbol"
"Bundle "coderifous/textobj-word-column.vim"
"Bundle "kana/vim-textobj-datetime"
"Bundle "kana/vim-textobj-entire"
"Bundle "kana/vim-textobj-function"
"Bundle "kana/vim-textobj-user"
"Bundle "lucapette/vim-textobj-underscore"
"Bundle "nathanaelkane/vim-indent-guides"
"Bundle "nelstrom/vim-textobj-rubyblock"
"Bundle "thinca/vim-textobj-function-javascript"
"Bundle "vim-scripts/argtextobj.vim"

" Cosmetics, color scheme, Powerline...
Bundle "chrisbra/color_highlight.git"
Bundle "skwp/vim-colors-solarized"
Bundle "itchyny/lightline.vim"
Bundle "vim-scripts/TagHighlight.git"
Bundle "bogado/file-line.git"
Bundle "morhetz/gruvbox"


" Customization
" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.vundles.local"))
  source ~/.yadr/vim/.vundles.local
endif

"Filetype plugin indent on is required by vundle
filetype plugin indent on

