# AngKorGit Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [AngKorGit](https://angkorgit.app) — a fast,
lightweight, beautiful Git client for macOS, Windows, and Linux. A 12 MB download instead
of the ~1 GB of Electron-based clients, built with Rust and native webviews.

## Install

```sh
brew install --cask cheat2001/tap/angkorgit
```

macOS may quarantine the app because it is not yet notarized. Either install with:

```sh
brew install --cask cheat2001/tap/angkorgit --no-quarantine
```

or clear the flag after installing:

```sh
xattr -cr /Applications/AngKorGit.app
```

## Upgrade

AngKorGit updates itself in-app (signature-verified). To upgrade via Homebrew instead:

```sh
brew upgrade --cask angkorgit
```

## Links

- Website: https://angkorgit.app
- Source: https://github.com/cheat2001/angkorgit
- Issues: https://github.com/cheat2001/angkorgit/issues
