
"===========================================================================
"                                ~My vimrc~
"===========================================================================
" Author:        Oswaldo Ferreira [http://oswaldo.me]
" Source:        https://github.com/oswaldoferreira/dotfiles
" Credits:       https://github.com/christoomey/dotfiles
"

let mapleader = ","

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
        execute 'source' config_file
    endif
  endfor
endfunction

" Setup Vundle to manage my bundles
"-----------------------------------
filetype off " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc("~/.vim/bundles/")

" Plugins are each listed in their own file. Loop and source ftw
"----------------------------------------------------------------
call s:SourceConfigFilesIn('rcplugins')

filetype plugin indent on " required!
syntax on

call s:SourceConfigFilesIn('rcfiles')

