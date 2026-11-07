# BootstrapFeedbacker

BootstrapFeedbacker displays a modal form for collecting feedback and emails it to a configured
address, along with the referring page URL (when available) and the current user's details.

## Requirements

- Ruby 3.3 or later and Rails 7.1 or later
- Import Maps, Turbo, and Stimulus
- Bootstrap 5 CSS and JavaScript, with `window.bootstrap.Modal` available
- A user model with an `email` attribute and a name method (default: `name`)
- A `current_user` method available to the application's controllers
- Action Mailer configured to deliver email

## Installation

1. Add the gem to your Gemfile and run `bundle install`:

   ```ruby
   gem "bootstrap_feedbacker"
   ```

2. Install and run the migrations:

   ```sh
   bin/rails bootstrap_feedbacker:install:migrations
   bin/rails db:migrate
   ```

3. Mount the engine in `config/routes.rb`:

   ```ruby
   mount BootstrapFeedbacker::Engine, at: "/bootstrap_feedbacker"
   ```

4. Include Bootstrap 5 CSS and JavaScript in your application. For example, with the Bootstrap
   gem's JavaScript assets and Import Maps, pin the non-ES module build in `config/importmap.rb`:

   ```ruby
   pin "bootstrap", to: "bootstrap.min.js"
   ```

   Import it in `app/javascript/application.js`:

   ```javascript
   import "bootstrap"
   ```

   The gem's Stimulus controller uses `window.bootstrap.Modal` to open the form. Ensure your
   application also loads its Stimulus controllers, for example with `lazyLoadControllersFrom`.

5. Add the feedback link and modal container to a view:

   ```erb
   <%= bootstrap_feedbacker_link %>
   <%= bootstrap_feedbacker_modal %>
   ```

## Configuration

Set the recipient address in `config/initializers/bootstrap_feedbacker.rb`:

```ruby
BootstrapFeedbacker::SETTINGS.email_to = "support@example.com"
```

The same address is used as the sender; replies go to the current user's email address.
You can also configure these settings:

```ruby
BootstrapFeedbacker::SETTINGS.update do |settings|
  settings.email_to           = "support@example.com"
  settings.email_prefix       = "[FEEDBACKER]" # default
  settings.modal_content_id   = "bootstrap_feedbacker_remark_modal_content" # default
  settings.modal_id           = "bootstrap_feedbacker_remark_modal" # default
  settings.user_class         = "User" # default
  settings.user_name_method   = :name # default
end
```

## License

Bootstrap Feedbacker is released under the [MIT License](https://opensource.org/licenses/MIT).
