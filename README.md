# README

## Configuration for Demo
The following software stack is utilized in the demo version of the application:

* Ruby 3.14
* Rails 7.05
* PostgreSQL
* Redis
* Nginx
* Puma
* Ubuntu
* Yarn

## Local Installation
To run <i>Pizza Chef</i> locally in your development environment, Nginx and Redis are not necessary. Follow the steps below to setup the application:

1. <b>Setup Ruby</b><br>
Use RVM, rbenv, or your preferred Ruby version manager to install <i>Ruby 3.14</i>. If you are using RVM, you can do so by running:
  ```sh
     rvm install 3.14
  ```
2. <b>Clone the GitHub repository</b><br>
Clone the application's source code by running the following command:
 ```sh
     git clone https://github.com/KevinNafziger/pizza_chef1.git
 ```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This will download all the necessary files into a &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new directory named pizza_chef1.

3. <b>Navigate to the Application Directory</b><br>
 Use the "cd" command to navigate into the app parent directory:
 ```sh
    cd pizza_chef1
 ```
4. <b>Set Ruby Version</b><br>
In the pizza_chef1 directory, set the Ruby version for the application to Ruby 3.14. If you're using RVM, run the following command:
```sh
    rvm use 3.14
```
5. <b>Install Ruby Dependencies</b><br>
By default, <i>Pizza Chef</i> uses esbuild for bundling and PostgreSQL as its database. If you wish to modify these defaults, you can change them in the Gemfile. Once you are satisfied with the setup, install the necessary gems by running:
```sh
   bundle install
```
6. <b>Install JavaScript packages</b><br>
JavaScript packages are defined in the package.json file located in the root directory of the application. Install these packages by running:
```sh
   yarn install
```
7. <b>Setup database configuration</b><br>
Configure the config/database.yml file to fit your local development setup for test, development, and production environments. Although the demo uses PostgreSQL, you can also use sqlite3 or MySQL. However, this would require replacing the "pg" gem with "sqlite3" or "MySQL2", respectively.<br>
If you're using PostgreSQL, create the necessary databases and a user with appropriate permissions using the psql command-line utility. Remember to add the database.yml file to your .gitignore to ensure sensitive database credentials are not accidentally committed.</br>

8. <b>Run Database Migrations</b><br>
Execute the following command to apply necessary database migrations:
```sh
   rails db:migrate
```
9. <b>Start the Development Server</b><br>
If you are using Mac or Linux, you can start the development server (default is at localhost:8080) by running the command below. If you wish to use a different port, modify the first line in the Procfile.dev file.
 ```sh
    bin/dev
```

## Testing
The application's test suite uses RSpec and Capybara, along with the factory_bot_rails, database_cleaner, and Shoulda Matchers gems.

To run the test suite:

1. Prepare the test database by running:
 ```sh
  rake db:test:prepare
 ```
 2. Execute all tests by running:
 ```sh
   rspec spec
 ```

## Demo
To experience the full functionality of <i>Pizza Chef</i>, visit the live demo at https://pizzachefapp.com <br>