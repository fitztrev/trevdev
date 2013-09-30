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
    puts ' TODO '.center(60, '=')
  end
end

task :default => "update:default"
task :update  => "update:default"
task :install => "install:default"
