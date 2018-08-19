# breakable-toys-project
![Build Status](https://app.codeship.com/projects/72cf0be0-4fd9-0135-7faf-6279c3a80d3c/status?branch=master)

heroku app

### This project was created as a practice project

TECHNOLOGIES: Currently, CareerLibrary is using Ruby on Rails, Javascript, and CSS for it's front end, and uses the Devise gem to allow users to sign up and sign in.

Rails was used for the back-end with PostGreSQL as the database. Rails is a convention-over-configuration framework that allowed us to get the application up and running without too much time spent on configuration decisions. PostGreSQL is a Heroku-supported database that makes deployment easier.

RSpec is used for testing controllers, forms and models on the back-end.

**SETUP:**
To get setup run,
```
bundle
rake db:create
rake db:migrate
rails s
```
In separate terminal run,
```
yarn
yarn start
```
And navigate to `localhost:3000`
To run Ruby tests, run `rake` or `rspec`
To run Enzyme tests, run `yarn test`


**Future Development**
```
-This project is not currently being worked on
```
