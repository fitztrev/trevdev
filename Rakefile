namespace :update do
  task :default => [:trevdev, :gems, :homebrew]

  task :trevdev do
    puts ' Updating trevdev '.center(60, '=')
    system('git pull origin master')
    system('git submodule update')
    system('git submodule foreach git pull origin master')
    system('vim +BundleUpdate +qall')
  end

  task :gems do
    puts ' Updating Gems '.center(60, '=')
    system('gem update')
  end

  task :homebrew do
    puts ' Updating Homebrew '.center(60, '=')
    system('type brew >/dev/null 2>&1 && brew update && brew upgrade || echo "Skipping homebrew"')
  end

  task :system do
    puts ' Checking for OS X updates '.center(60, '=')
    system('sudo softwareupdate -l')
  end
end

namespace :install do
  task :default do
    puts ' Installing '.center(60, '=')

    system('git submodule update --init')

    ## Install dotfiles
    system('rm -rf $HOME/.vim')
    system('ln -s  $PWD/vim $HOME/.vim')

    system('rm -f $HOME/.vimrc')
    system('ln -s $PWD/vim/.vimrc $HOME/.vimrc')

    system('rm -rf $HOME/.oh-my-zsh')
    system('ln -s  $PWD/oh-my-zsh $HOME/.oh-my-zsh')

    system('rm -f $HOME/.zshrc')
    system('ln -s $PWD/shell/.zshrc $HOME/.zshrc')

    system('rm -f $HOME/.slate')
    system('ln -s $PWD/slate/.slate $HOME/.slate')

    ## Install Vim plugins
    system('vim +BundleInstall +qall')

    ## Change shell
    puts 'Changing shell. Enter your password if prompted.'
    system('chsh -s /bin/zsh')
  end

  task :mac do
    puts ' Configuring Mac preferences'.center(60, '=')
    system('osascript applescript/*.applescript')

    puts ' Installing NVM '.center(60, '=')
    system('curl https://raw.github.com/creationix/nvm/master/install.sh | sh')

    puts ' Installing other Homebrew packages '.center(60, '=')
    system('brew tap homebrew/dupes')
    system('brew tap josegonzalez/homebrew-php')
    system('brew install php55 php55-mcrypt')
    system('brew install composer mosh phpunit rbenv ruby-build vim wget zsh-syntax-highlighting')
  end

  task :git do
    puts ' Configuring git '.center(60, '=')
    system('git config --global user.name "Trevor Fitzgerald"')
    system('git config --global user.email fitztrev@gmail.com')
    system('git config --global color.ui true')
  end
end

task :default => "update:default"
task :update  => "update:default"
task :install => "install:default"
