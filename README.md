# README

### Add gems

- gem 'devise'
- gem 'cancancan'
- gem 'draper'
- gem 'pundit'

### Generate User model

rails g active_admin:install User

### Turn off API mode

`/config/application.rb`

Comment `config.api_only = true` line

### Create assets

Copy the app/assets folder as it is

### undefined method `layout'

`undefined method 'layout' for ActiveAdmin::Devise::SessionsController:Class`

`app/controllers/application_controller.rb`

Modify the ApplicationController to inherit ActionController::Base unstead of ActionController::API

### Database and example admin user

- rails db:migrate
- rails db:seed

### Add ActiveAdmin resource

`rails generate active_admin:resource MyModel`

And then uncomment line like `permit_params :title`
