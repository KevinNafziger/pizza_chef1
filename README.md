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
* Run migrations
```sh
  rails db:migrate
```

## Demo
 * https://pizzachefapp.com <br>

## Testing
 *RSpec and Capbyara.
 * Run test suite from the parent directory:
 ```sh
   rspec spec
 ```


