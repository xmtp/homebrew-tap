# homebrew-tap

🍺 Homebrew tap for [XMTPD](https://github.com/xmtp/xmtpd) tools.

## Installation

First, add this tap:

```sh
brew tap xmtp/tap
```
Then install the CLI:

```sh
brew install xmtpd-cli
```
## Upgrade
To upgrade to the latest release:

```sh
brew update
brew upgrade xmtpd-cli
```

## Completions
Shell completions are bundled with the formula.
After installation, run:

### Bash
```sh
brew completions bash
```

### Zsh
```sh
brew completions zsh
```

### Fish
```sh
brew completions fish
```
Or source them manually from:

```sh
$(brew --prefix)/share/zsh/site-functions
$(brew --prefix)/etc/bash_completion.d
$(brew --prefix)/share/fish/vendor_completions.d
```
Maintained by XMTP.
