# Glom's NixVim 

## Prerequisite

Got Nix and enable nix-command and flakes

### NixOS

> /etc/nixos/configuration.nix
```
nix
{ pkgs, ... }: {
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
```

### Non-NixOS

Install [Nix: The Package Manager](https://nixos.org/download/).

> ~/.config/nix/nix.conf
```
experimental-features = nix-command flakes
```

## Try Glom's NixVim

> You should have cargo and rustc in your env if you want to use rust-analyzer in my NixVim

Clone this repo and run the following command:
```
nix run .
```
or you can build via

```
nix build .
```

## Thanks to [Fangjun](https://github.com/fangjunzhou)


