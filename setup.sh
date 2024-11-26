sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y

sudo apt install -y neovim git curl wget trash-cli

## install cargo
if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
else
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    . "$HOME/.cargo/env"
fi

cat dotfiles/.bashrc >> ~/.bashrc
cat dotfiles/.bash_aliases >> ~/.bash_aliases
source ~/.bashrc

curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
cargo binstall eza --locked
cargo binstall zoxide --locked
cargo binstall bat --locked
cargo binstall btm --locked
