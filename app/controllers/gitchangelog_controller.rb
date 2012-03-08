class GitchangelogController < ApplicationController
	# need this here since the engine doesn't autoload
	require 'git'
	
	def index

		begin
			git = Git.open (Rails.root)
			@log = git.log
			@logsize = @log.count
		rescue Git::GitExecuteError
			@log = []
			@logsize = 0
			@giterror = true
		end
		
		respond_to do |format|
      format.html # index.html.erb
    end
	end
	
end