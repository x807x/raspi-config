sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y

sudo apt install "vim git curl wget" -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"

cat dotfiles/.bashrc >> ~/.bashrc
cat dotfiles/.bash_aliases >> ~/.bash_aliases

# install cargo-binstall
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

cargo binstall eza --locked
cargo binstall zoxide --locked