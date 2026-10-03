# Watzon Homebrew Tap

Homebrew casks and formulae of Watzon projects. The release automation of each project updates its file here, so do not edit the files by hand.

| Project | Kind | Install |
|---|---|---|
| [Sayso](https://github.com/watzon/sayso), local voice dictation into any app | Cask | `brew install --cask watzon/tap/sayso` |
| [ax](https://github.com/watzon/ax-cli), a macOS Accessibility Inspector CLI | Formula | `brew install watzon/tap/ax` |
| [Semantouch](https://github.com/watzon/semantouch) | Cask | `brew install --cask watzon/tap/semantouch`, after its first universal2 release is published |

To update, use Homebrew as usual:

```sh
brew update
brew upgrade
```

Sayso updates itself, so `brew upgrade` leaves it alone unless you add `--greedy`.

The tap `watzon/ax` moved here. If you installed `ax` from it, `brew update` moves your install to this tap.
