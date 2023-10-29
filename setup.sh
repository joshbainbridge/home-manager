curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

mkdir -p $HOME/.config
ln -s $HOME/.git/home-manager $HOME/.config/home-manager

nix run home-manager/master -- init --switch
