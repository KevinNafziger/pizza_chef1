# README

## Configuration
* Ruby 3.14, Rails 7.05, PostGresSQL, Redis, Nginx, Puma, Ubuntu, Yarn

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
* Setup your database.yml file in config/database.yml for test, development and production. The demo uses PostGresSQL as the database and the 'pg' gem is included in the Gemfile. However, the configuration can be adapted to user's preferred relational database,if it is supported by RoR.

* Once you have the databases setup, run the migrations:
```sh
  rails db:migrate
```
* Mac and Linux users can run "bin/dev" from the command line and see ther development server running at localhost:8080. The setup should also work on Windows  some additional configuration may be needed to  get both tailwind and rails running together.

## Testing
 *RSpec/Capbyara.
 * Before running the test suite, make sure that all migrations have been run on the test database.  This can be done by typing
 ```sh
  rake db:test:prepare
 ```
 * To Run the test suite, type:
 ```sh
   rspec spec
 ```

## Demo
 * https://pizzachefapp.com <br>
