# Matrix Homebrew Tap

Homebrew cask distribution for Matrix on macOS.

## Install

```sh
brew install --cask techx-academy/matrix/matrix
```

## Upgrade

```sh
brew update
brew upgrade --cask matrix
```

Matrix also includes its own Sparkle updater, so the cask is marked with
`auto_updates true`.

## Release Source

This tap installs the signed and notarized public Matrix DMG from:

```text
https://download.matrix.build/mac/
```

The cask does not contain Matrix source code.
