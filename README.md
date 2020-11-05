# README

### undefined method `layout'

undefined method `layout' for ActiveAdmin::Devise::SessionsController:Class

- when use rails api only, it needs to modify the ApplicationController to inherit ActionController::Base (in app/controllers/application_controller.rb)

- Create assets

## RSPec

```ruby
group :development, :test do
  gem 'rspec-rails', '~> 4.0.1'
end
```

- `bundle install`

- `rails generate rspec:install`
