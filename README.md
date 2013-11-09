## Installation

**OS X**

```
$ ssh-keygen -t rsa -C "fitztrev@gmail.com"

$ sudo xcodebuild -license
$ xcode-select --install

$ ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
$ brew install git zsh

$ git clone git@github.com:fitztrev/trevdev.git ~/trevdev
$ cd ~/trevdev
$ rake install
```

**Ubuntu**

```
$ sudo apt-get install rubygems vim zsh
$ sudo gem install rake
$ rake install
```

## Updating

```
$ rake update
```

## For local use

1. Install fonts so Powerline will work
2. Set iTerm2 "Non-ASCII font" to `Monaco for Powerline`
3. Set iTerm2 preferences URL on the General tab to the location of `iterm2`
4. Import iterm2/colors.itermcolors into iTerm2 profile

## Apps

List of the applications that I keep installed.

### App Store
* App2Dmg
* CopyClip
* Go2Shell
* Lingo IRC
* LittleIpsum
* Xcode

### 3rd Party
* [Alfred](http://www.alfredapp.com/)
* Android Studio
* CodeKit
* CoRD
* Chrome
* Firefox
* iTerm2
* LICEcap - For recording GIFs
* Mou
* MySQL Workbench
* Reggy
* Scrup
* [Shuttle](http://fitztrev.github.io/shuttle/)
* Skype
* [Slate](https://github.com/jigish/slate)
* Spotify
* Vagrant
* VirtualBox

### Chrome Extensions
* Adblock Plus
* Dev Docs
* Hover Zoom
* JSONView
* LastPass
* OneTab
* PageSpeed Insights
* PHP Docs-to-go
* Postman (Packaged app)
* Reddit-Style Comments for Hacker News

### Firefox Add-ons
* Auto Reload
* ColorZilla
* Firebug
* Firepicker
* JSONView
* LastPass
* [Page Speed](https://developers.google.com/speed/docs/insights/using_firefox)
* Selenium IDE
* Skip Cert Error
* Web Developer Toolbar
