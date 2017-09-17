## Build a GitHubGist clone app

My goal was to build a very simple clone of the Gist app by GitHub.

Users need to able to post, categorize and search a gist. For now, users are able to filter gists by their categories, and find gists by the name, code and description.

Ruby 2.4.0 is used on Rails 5.

## Instructions

* Use Ruby On Rails
* PostgreSQL as database

## Setup

* Clone (or download) this repository on your computer.
* Run ```bundle install``` to get all the gems I've been using in this app (make sure PostgreSQL is already installed in your machine).
* Run ```rails db:migrate``` to migrate your database tables.
* Finally, you can run ```rails s``` to launch the app (by default, you can reach it on http://0.0.0.0:3000)

I deployed this app on Heroku ([https://gistapp.herokuapp.com/](https://gistapp.herokuapp.com/)) so that you can see what to expect.

## Disclaimer

This app is not complete and very unstable, I'm totally aware of that. That's why I'm totally open to advices and feedbacks!
