# Homebrew Casks

[![Test](https://github.com/fafarunner/homebrew-casks/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/fafarunner/homebrew-casks/actions/workflows/test.yml)
[![Release](https://github.com/fafarunner/homebrew-casks/actions/workflows/release.yml/badge.svg)](https://github.com/fafarunner/homebrew-casks/actions/workflows/release.yml)

## Casks

| Cask       | Version                                                                                                                                                                                                                                                                                                                 | 
|:-----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| fafarunner | ![Homebrew Cask Version](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fraw.githubusercontent.com%2Ffafarunner%2Fhomebrew-casks%2Frefs%2Fheads%2Fmain%2FCasks%2Ffafarunner.rb&search=version%5Cs%2B%22%28%3F%3Cversion%3E%5Cd%2B%28%3F%3A%5C.%5Cd%2B%29%2B%29%22&replace=%24%3Cversion%3E&label=homebrew) |

## Install

> Starting with Homebrew 6.0.0, you must trust non-official taps to install them. See [Tap Trust](https://docs.brew.sh/Tap-Trust).

Run `brew trust --cask fafarunner/casks/fafarunner` and `brew install --cask fafarunner/casks/fafarunner`

Or run `brew tap fafarunner/casks`, `brew trust fafarunner/casks` and `brew install fafarunner`.

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "fafarunner/casks", trusted: true
brew "fafarunner"
```

## Debug

`brew audit --strict --fix --cask fafarunner`

`brew livecheck --debug fafarunner`

## Documentation

Your taps are Git repositories located at `$(brew --repository)/Library/Taps`

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## LICENSE

[MIT](./LICENSE)
