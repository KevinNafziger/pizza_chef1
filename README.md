# README

## Configuration
* Ruby 3.14, Rails 7.05, PostGresSQL, Redis, Nginx, Puma, Ubuntu, Yarn

## Installation
* Clone the repo:
 ```sh
   git clone https://github.com/KevinNafziger/pizza_chef1.git
 ```
* Move to the parent directory:
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
* Setup your database.yml file in config/database.yml for test, development and production. The demo uses PostGresSQL as the database and the 'pg' gem is included in the application's Gemfile. However, configuration can be adapted to user's preferred relational database,if desired and if the db is supported by RoR.

* Once you have the databases setup, Run the migrations
```sh
  rails db:migrate
```

## Testing
 *RSpec/Capbyara.
 * To Run the test suite from the parent directory, type:
 ```sh
   rspec spec
 ```

## Demo
 * https://pizzachefapp.com <br>
