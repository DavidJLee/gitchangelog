## Gitchangelog

Adds in a /changelog/ path that displays the git commit log of the local rails root.

Install the gem in your Gemfile

	gem 'gitchangelog'

In order to pull in css styles you have to modify your application.css file and add this line
in with the other require statements.

	*= require gitchangelog


You can link to your changelog from a view with:

	<%= link_to "Changelog", changelog_path %>

That's all there is to it.


## Custom Style
You can omit the stylesheet above, and create your own styles. 

Each commit is wrapped in a div with class "commit". This div contains spans with the following class styles: "cdate", "cname", and "chash".
The commit message is enclosed in a pre tag.

## Custom Layout
You can set the application layout specifically for Gitchangelog in your application.rb file.

	config.to_prepare do
		GitchangelogController.layout "mylayout"
	end
