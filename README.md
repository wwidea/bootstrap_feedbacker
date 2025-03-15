# BootstrapFeedbacker
BootstrapFeedbacker provides a modal form to collect user feedback and sends it in an email including the current page URL to the configured email address.

## Requirements

* Rails 6.0 or higher with Import Maps, Turbo Frames, and Stimulus
* Bootstrap version 4
* **User** model with an **email** attribute
* **current_user** method defined in **ApplicationController**

## Installation

1. Add the `bootstrap_feedbacker` gem to your Gemfile:
```ruby
gem "bootstrap_feedbacker"
```

2. Run `bundle install`.

3. Run `rails bootstrap_feedbacker:install:migrations`.

4. Run `rails db:migrate` to add the **bootstrap_feedbacker_remarks** table to your schema.

5. Mount the engine in your **routes.rb** file:
```ruby
mount BootstrapFeedbacker::Engine, at: '/bootstrap_feedbacker'
```

6. Add the bootstrap feedbacker link and modal container to a view file:
```erb
<%= bootstrap_feedbacker_link %>
<%= bootstrap_feedbacker_modal %>
```

## Configure

Create `config/initializersbootstrap_feedbacker.rb` and set your email address:

```ruby
BootstrapFeedbacker::SETTINGS.email_to = 'support@yourdomain.com'
```

Or set your email address and override any of these default settings:

```ruby
  BootstrapFeedbacker::SETTINGS.update do |settings|
    settings.email_to           = 'support@yourdomain.com'
    settings.email_prefix       = '[FEEDBACKER]'                              # default
    settings.modal_content_id   = 'bootstrap_feedbacker_remark_modal_content' # default
    settings.modal_id           = 'bootstrap_feedbacker_remark_modal'         # default
    settings.user_class         = 'User'                                      # default
    settings.user_name_method   = :name                                       # default
  end
```

## License

Bootstrap Feedbacker is released under the [MIT License](https://opensource.org/licenses/MIT).
