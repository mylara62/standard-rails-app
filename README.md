# Standard Rails Application

## Gemfile

# Application Gem

* [Autoprefixer](https://github.com/ai/autoprefixer-rails) Rails for CSS vendor prefixes
* [Bourbon](https://github.com/thoughtbot/bourbon) for Sass mixins
* [Delayed Job](https://github.com/collectiveidea/delayed_job) for background processing
* [jQuery Rails](https://github.com/rails/jquery-rails) for jQuery
* [Flutie](https://github.com/thoughtbot/flutie) for page_title and body_class view helpers
* [Postgres](https://github.com/ged/ruby-pg) for access to the Postgres database
* [Simple](https://github.com/plataformatec/simple_form) Form for form markup and style
* [Bootstrap](https://github.com/seyhunak/twitter-bootstrap-rails) for style
* [Title](https://github.com/calebthompson/title) for storing titles in translations
* [Puma](https://github.com/thoughtbot/suspenders/blob/master/README.md) to serve HTTP requests
* [Redis](https://github.com/redis/redis-rb)

# Developement Gem

* [Dotenv](https://github.com/bkeepers/dotenv) for loading environment variables
* [Pry Rails](https://github.com/rweng/pry-rails) for interactively exploring
  objects
* [ByeBug](https://github.com/deivid-rodriguez/byebug) for interactively
  debugging behavior
* [Bullet](https://github.com/flyerhzm/bullet) for help to kill N+1 queries and
  unused eager loading
* [Bundler Audit](https://github.com/rubysec/bundler-audit) for scanning the
  Gemfile for insecure dependencies based on published CVEs
* [Spring](https://github.com/rails/spring) for fast Rails actions via
  pre-loading
* [Web Console](https://github.com/rails/web-console) for better debugging via
  in-browser IRB consoles.

# Testing Gem

* [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner)
* [webmock](https://github.com/bblimke/webmock)
* [launchy](https://github.com/copiousfreetime/launchy)
* [simplecov](https://github.com/colszowka/simplecov)
* [rspec-rails, "~> 3.5"](https://github.com/rspec/rspec-rails)
* [rspec-retry](https://github.com/NoRedInk/rspec-retry)
* [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [poltergeist](https://github.com/teampoltergeist/poltergeist)
* [selenium-webdriver](https://rubygems.org/gems/selenium-webdriver/versions/2.53.0)
* [timecop](https://github.com/travisjeffery/timecop)
* [capybara](https://rubygems.org/gems/capybara/versions/2.7.1)
* [formulaic](https://github.com/thoughtbot/formulaic)

# Scheduler Gem


### Associated services

* Enable [Circle CI](https://circleci.com/) Continuous Integration
* Enable [GitHub auto deploys to Heroku staging and review
    apps](https://dashboard.heroku.com/apps/app-name-staging/deploy/github).


It includes application gems like:

# Start Application

* bin/delayed_job start