# README

This is a 3 part session on creating a ruby on rails application from scratch. 

## Session 1

In this session we complete installation of the dev environment. We install
Ruby (2.2 or greater), and install rails. Then we initiate the app by opening a
terminal prompt and typing 

```shell
mkdir transcode_app # optional
rails new transcode_app 
cd transcode_app
```

This takes care of the required components, such as html templates,
controllers, initializing the database etc. Now to run the server 

```shell
rails server # can be shortened to rails s
```

Now in the browser, type "localhost:3000" and hit enter. You should now see a
welcome to rails message. This concludes the first session. 

## Session 2

Now we move on to adding features to the empty we built in the last session. 

Run `gem install bundler` in the terminal. This downloads and installs the
bundler package. This is required by rails to manage the `gems` (addons) for
ruby. 

In the Gemfile, we add the following lines:

```ruby
gem 'bootstrap-sass'
```

Rename the file `app/assets/stylesheets/application.css` to
`app/assets/stylesheets/application.scss`.

In the file `app/assets/stylesheets/application.scss` add the following lines
at the bottom:

```sass
@import "bootstrap-sprockets";
@import "bootstrap";
```

Don't forget the semicolons. 

In the file `app/assets/javascript/application.js` add these lines

```js
//=require bootstrap-sprockets
```
This will add the bootstrap goodies required for the project to the path.

### Creating the todo list application

Now run the following commands in your terminal:

```shell
rails generate scaffold Todo title:string desc:text
rake db:migrate
```

* This will create a table 'Todo', with the columns title and desc of type string
and text respectively. 

* This will create a set of paths, functions and controllers for the basic todo app. 

You can run this application now (`rails s`). And point your browser to
'localhost:3000/todos'. This should now show an almost empty page with a button
to create a new todo. Click the button and fill in the form fields to create a
new entry. Repeat a few times to see what the todo list looks like.

### Devise

Devise is a ruby gem. It helps with creating user login to the web application
we are building. To install, add this line to the Gemfile.

```ruby
gem 'devise'
```

Now run `bundle install` in the terminal. This will install it in the
environment. But not the app. To do that run `rails generate devise:install`.
This will generate some output is instructions to complete the install.
Complete the tasks and devise is ready to use.
