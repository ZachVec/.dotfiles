# Dotfiles

## Prerequisite

Have [GNU Stow](https://www.gnu.org/software/stow/) installed.

## Usage

run the command below in this repo to update your dotfiles configuration.

```bash
stow -S {dirname}
```

`{dirname}` is the directory name of the softwares in this repo.
For instance, if you want to update the tmux configuration:

```bash
stow -S tmux
```

And if you want to update all, just run:

```bash
stow */
```
