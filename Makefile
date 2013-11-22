build: update
install: git setup nvm linux mac

.PHONY: update
update:
	@echo "Updating trevdev"
	git pull origin master
	git submodule update
	git submodule foreach git pull origin master
	vim +BundleUpdate +qall
	@echo ' Updating Gems '
	@gem update || true
	@echo ' Updating Homebrew '
	@type brew >/dev/null 2>&1 && brew update && brew upgrade || true

.PHONY: git
git:
	@echo ' Configuring git '
	@read -r -p "Name: " NAME; \
	 git config --global user.name "$$NAME"
	@read -r -p "Email Address: " EMAIL; \
	 git config --global user.email $$EMAIL
	@git config --global color.ui true

.PHONY: setup
setup:
	@echo ' Installing '
	git submodule update --init
	## Install dotfiles
	rm -rf $(HOME)/.vim
	ln -s  $(PWD)/vim          $(HOME)/.vim
	rm -f  $(HOME)/.vimrc
	ln -s  $(PWD)/vim/.vimrc   $(HOME)/.vimrc
	rm -rf $(HOME)/.oh-my-zsh
	ln -s  $(PWD)/oh-my-zsh    $(HOME)/.oh-my-zsh
	rm -f  $(HOME)/.zshrc
	ln -s  $(PWD)/shell/.zshrc $(HOME)/.zshrc
	rm -f  $(HOME)/.slate
	ln -s  $(PWD)/slate/.slate $(HOME)/.slate
	## Install Vim plugins
	vim +BundleInstall +qall
	## Change shell
	echo 'Changing shell. Enter your password if prompted.'
	chsh -s /bin/zsh

.PHONY: nvm
nvm:
	@echo ' Installing NVM '
	curl https://raw.github.com/creationix/nvm/master/install.sh | sh

.PHONY: linux
linux:
ifeq ($(shell uname),Linux)
	@echo ' Configuring Ubuntu Software Packages '
	sudo apt-get update
	sudo apt-get upgrade -y
	sudo apt-get install -y \
	 fail2ban \
	 mosh \
	 tmux \
	 weechat
endif

.PHONY: mac-prefs
mac-prefs:
ifeq ($(shell uname),Darwin)
	@echo ' Configuring Mac preferences'
	osascript applescript/*.applescript
	@echo ' Installing other Homebrew packages '
	ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
	brew tap homebrew/dupes || true
	brew tap josegonzalez/homebrew-php || true
	brew install php55 php55-mcrypt
	brew install composer git mosh phpunit rbenv ruby-build tmux vim wget zsh zsh-syntax-highlighting
	@echo ' Mac Defaults '
	# Expand save panel by default
	defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
	# Save to disk (not to iCloud) by default
	defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
	# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
	defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
	# Totally disable the dashboard
	defaults write com.apple.dashboard mcx-disabled -boolean TRUE
	# Always open everything in Finder's list view. This is important.
	defaults write com.apple.Finder FXPreferredViewStyle Nlsv
	# Show the ~/Library folder.
	chflags nohidden ~/Library
	# Disable the warning when changing a file extension
	defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
	# Finder: show all filename extensions
	defaults write NSGlobalDomain AppleShowAllExtensions -bool true
	# Add iOS Simulator to Launchpad
	[ ! -L /Applications/iOS\ Simulator.app ] && ln -s /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app /Applications/iOS\ Simulator.app || true
	# Finder: show status bar
	defaults write com.apple.finder ShowStatusBar -bool true
	# Disable the “Are you sure you want to open this application?” dialog
	defaults write com.apple.LaunchServices LSQuarantine -bool false
endif

.PHONY: mac-dock
mac-dock:
ifeq ($(shell uname),Darwin)
	@echo ' Cleaning up dock '
	./dockutil/scripts/dockutil --remove "Contacts"
	./dockutil/scripts/dockutil --remove "Safari"
	./dockutil/scripts/dockutil --remove "Notes"
	./dockutil/scripts/dockutil --remove "Maps"
	./dockutil/scripts/dockutil --remove "FaceTime"
	./dockutil/scripts/dockutil --remove "Photo Booth"
	./dockutil/scripts/dockutil --remove "iTunes"
	./dockutil/scripts/dockutil --remove "iBooks"
	./dockutil/scripts/dockutil --remove "App Store"
	./dockutil/scripts/dockutil --remove "System Preferences"
endif

.PHONY: ssh-key
ssh-key:
	@read -r -p "Email Address/Comment: " COMMENT; \
	 ssh-keygen -t rsa -C "$$COMMENT"
