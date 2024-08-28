# Nix Devenv Demo

## Install Nix
```
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

## Install Devenv
```

nix profile install --accept-flake-config nixpkgs#devenv
```

## Install Direnv
```
nix profile install nixpkgs#nix-direnv
```
