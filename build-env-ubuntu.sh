echo "setting up development environment"

echo "installing build tools"
sudo apt-get install build-essential
sudo apt-get install pkg-config
echo "build tools installed"

echo "installing wget"
sudo apt-get install wget
echo "wget installed"

echo "installing zsh"
sudo apt-get install zsh
echo "zsh installed"

echo "installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Oh My Zsh installed"

echo "installing tmux"
sudo apt-get install tmux
echo "tmux installed"

echo "copying terminal config file"
cp /assets/gnome-terminal.desktop ~/.local/share/applications/

echo "installing nvim"
sudo apt-get install neovim
echo "insalled nvim"

echo "copying nvim config file to the right directory"
cp /assets/init.vim ~/.config/nvim/init.vim

echo "installing Plug on nvim"
curl -fLo ~/.config/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
