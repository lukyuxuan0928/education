# Education Management System

A very simple and small management management system with rails. I'm using some of the test gem in order to do some testing of concept before coding. Using the clearance as our login authentication, it very simple and easy to use in testing purpose. Used bootstrap to provide a pretty user interface. Uploading the application to Heroku as cloud platform.

## Getting Started

Here I'm creating a simple education application on rails.

## Installation

Before creating start the this project, you need to install:

## Clearance

Here I'm using clearance gem as login authentication. Clearance is intended to be small, simple, and well-tested. It has opinionated defaults but is intended to be easy to override.

### Install the required GEM

```
  gem "clearance"
```

### Run some command in shell:

```
  $ bundle Install
  $ rails generate clearance:install
```

### Example

```
  <% if signed_in? %>
    <%= current_user.email %>
    <%= button_to "Sign out", sign_out_path, method: :delete %>
  <% else %>
    <%= link_to "Sign in", sign_in_path %>
  <% end %>
```

## Bootstrap

Here I will use the bootstrap to make application looks more pretty and clean.

### Install the required GEM

```
  gem 'bootstrap-sass', '~> 3.3.7'
  gem 'sass-rails', '>= 3.2'
```

### Import bootstrap style in app/assets/stylesheets/application.scss:

```
  @import "bootstrap-sprockets";
  @import "bootstrap";
```

### Require boostrap javascript in app/assets/javascripts/application.js:

```
  //= require jquery
  //= require bootstrap-sprockets
```

## Test

Here I will provide some test case and run the testing before coding, please review the 'test' folder.

### Install the required GEM
```
  gem 'minitest-rails'
  gem 'factory_bot'
  gem 'faker'
```

### Install the minitest
```
  $ rails g minitest:install
```

## Version

Please take note that might minor changes of syntax on different version

```
    ruby              ==   2.4.1
    rails             ==   5.1
    rvm               ==   1.29.3
    curl              ==   7.47
    nodejs            ==   4.2.6
    bootstrap-sass    ==   3.3.7
    clearance         ==   1.15.1
    jquery-rails      ==   4.31
    factory_bot_rails ==   4.8.2
    minitest-rails    ==   3.0.0
    sass-rails        ==   5.0.6
```
