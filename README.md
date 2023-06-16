# README

## Configuration
* Ruby 3.14, Rails 7.05, PostGreSQL, Redis, Nginx, Puma, Ubuntu, Yarn

## Installation
* Clone the repo (from command line):
 ```sh
   git clone https://github.com/KevinNafziger/pizza_chef1.git
 ```
* Move into the parent directory:
 ```sh
   cd pizza_chef1
 ```
* Install gems
```sh
   bundle install
```
* Install javascript
```sh
  yarn install
```
* Setup your database.yml file in config/database.yml for test, development and production. The demo uses PostGreSQL as the database and the 'pg' gem is included in the Gemfile. However, the configuration can be adapted the the user's preferred relational database supported by Rails.

* Once you have the databases created, run the migrations:
```sh
  rails db:migrate
```
* Mac and Linux users can run "bin/dev" from the command line and see their development server running at localhost:8080. The setup should also work on Windows, although  some additional configuration may be needed to get both Tailwindcss and Rails running together.

## Testing
 RSpec/Capbyara
 * Before running the test suite, you can ensure that all migrations have been run on the test database by typing:
 ```sh
  rake db:test:prepare
 ```
 * You can then run all the tests by typing:
 ```sh
   rspec spec
 ```

## Demo
 * https://pizzachefapp.com <br>
