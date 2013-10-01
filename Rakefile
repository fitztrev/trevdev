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
    system('brew update && brew upgrade')
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

    ## Load new Zsh preferences
    system('source $HOME/.zshrc')

    ## Install Vim plugins
    system('vim +BundleInstall +qall')

    ## Change shell
    system('chsh -s /bin/zsh')
  end
end

task :default => "update:default"
task :update  => "update:default"
task :install => "install:default"
