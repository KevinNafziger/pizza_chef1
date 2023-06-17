# README

## Configuration for Demo
* Ruby 3.14, Rails 7.05, PostgreSQL, Redis, Nginx, Puma, Ubuntu, Yarn

## Installing locally
Redis and Nginx should not be needed to run the app locally. To skip installing Redis in development, include this line in your <i>config/development.rb</i> file:
```sh
config.cache_store = :null_store
```
Before cloning the app, make sure to have <b>Ruby 3.14</b> set as your default Ruby version for the directory where you copy the code. The Demo app uses PostgreSQL, but MySQL and sqlite3 should work too. Thanks, and enjoy designing pizzas with <i>Pizza Chef</i>!

To start running <i>Pizza Chef</i> on your local machine:

* Clone the repo:
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
* Setup your database.yml file in config/database.yml for test, development and production. The demo uses PostgreSQL as the database and the 'pg' gem is included in the Gemfile. However, the configuration can be adapted to the user's preferred relational database.

* Once databases have been created, you can run migrations on your devevlopment database by typing:
```sh
  rails db:migrate
```
* Mac and Linux users can run "bin/dev" from the command line and see their development server running at localhost:8080 which will load the front page of the <i>Pizza Chef</i> app. The setup should also work on Windows, although the tailwindcss process and Rails may needed to be started separately instead of being run together as with "bin/dev."
## Testing
 RSpec/Capbyara
 The test suite includes two model test files and one feature test file.
 * Before running the full test suite, make sure migrations have been run on you test database by typing:
 ```sh
  rake db:test:prepare
 ```
 * Then, to run all tests, type:
 ```sh
   rspec spec
 ```

## Demo
 * https://pizzachefapp.com <br>
