## Installation

### Requirements

#### OS-X

```
$ sudo xcodebuild -license
$ xcode-select --install
```

### Ubuntu

```
$ sudo apt-get install -y build-essential git vim zsh
```

## Installation

```
$ git clone https://github.com/fitztrev/trevdev.git ~/trevdev
$ cd ~/trevdev
$ make install
```

### Configuring iTerm2

1. Set iTerm2 preferences URL on the General tab to the location of the `iterm2` folder
2. Restart iTerm2

## Updating

```
$ make update
```

## Other

Generate a new SSH key

```
$ make ssh-key
```
