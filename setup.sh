sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y

sudo apt install "vim git curl wget" -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"

cat dotfiles/.bashrc >> ~/.bashrc
cat dotfiles/.bash_aliases >> ~/.bash_aliases

cargo install eza --locked
cargo install zoxide --locked