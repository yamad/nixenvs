# nixenvs (nix environments)

Default environments for various languages under [nix](https://nixos.com/nix)
and [nixpkgs](https://nixos.com/nixpkgs)

## Usage

To open an environment with [R](https://r-project.org) available, use
`nix-shell` with the appropriate `shell.nix.LANG`:

    $ nix-shell shell.nix.R

I assume copying the `shell.nix` into each project directory will be the best
workflow:

    $ mkdir new_project && cd new_project
    $ cp <prefix>/shell.nix.R shell.nix
    $ nix-shell

A custom set of nixpkgs can be specified. For example, if `NIX_PATH` is
set, `nixpkgs=...:custom-nixpkgs=...', then:

    $ nix-shell shell.nix.R --arg nixpkgs '<custom-nixpkgs>'

Can drop immeidately into a command/shell of choice. For example,

    $ nix-shell shell.nix.R --arg nixpkgs '<custom-nixpkgs>' --command zsh
    $ nix-shell shell.nix.R --arg nixpkgs '<custom-nixpkgs>' --command R
