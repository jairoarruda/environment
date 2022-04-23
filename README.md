## Steps

1. First run `build-env.sh` script if you are using **Ubuntu** based distro.
2. create an file called `.tmux.conf` on your home directory to configure tmux to recognize color schemes on neovim.
3. open `.tmux.conf` file and type the following:
```sh
set-option -sa terminal-overrides ",xterm*:Tc"
```
4. If you desire to install `asdf`, configure your `.zshrc` file after asdf installation adding the following lines on the end of your zshrc file:
```sh
. $HOME/.asdf/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
```
