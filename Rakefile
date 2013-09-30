namespace :update do
	task :all do
		Rake::Task['update:trevdev'].execute
		Rake::Task['update:gems'].execute
		Rake::Task['update:homebrew'].execute
	end

	task :trevdev do
		puts '########## Updating trevdev  ##############'
		system('git pull origin master')
		system('git submodule update')
		system('git submodule foreach git pull origin master')
		system('vim +BundleUpdate +qall')
	end

	task :gems do
		puts '########## Updating gems     ##############'
		system('gem update')
	end

	task :homebrew do
		puts '########## Updating homebrew ##############'
		system('brew update && brew upgrade')
	end
end
