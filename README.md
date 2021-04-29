# vim-config
Nice VIM editor configuration

## Installation
- Clone project in ~/.vim (directory should be empty)

```
  git clone git@github.com:MarcoMacedoP/vim-config.git ~/.vim
```

- Open ~/.vimrc (Or create it) and add the following code:
```
    source ~/.vim/init.vim 
```
- Open a VIM instance and execute
```
:PlugInstall
```
- Install your required language servers with CoC, for example:
```
:CocInstall coc-json coc-tsserver
```
