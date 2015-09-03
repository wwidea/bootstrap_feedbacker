[![Gem Version](https://badge.fury.io/rb/boostrap_feedbacker.png)](http://badge.fury.io/rb/bootstrap_feedbacker)
[![Code Climate](https://codeclimate.com/github/wwidea/bootstrap-feedbacker.png)](https://codeclimate.com/github/wwidea/bootstrap-feedbacker)


### Feedbacker
Feedbacker provides a tab for users to contact developers from within the application

### Assumptions

Feedbacker assumes that you're using...

* At least Rails 4.2.2
* The Rails Asset Pipeline
* Jquery
* Bootstrap

That you have a User class(can be configured to use a different class name) with email and name methods (name can be configured to something else)
and probably some other things that we've failed to mention.

Installation

Add the following to your Gemfile.

```gem 'bootstrap-feedbacker'```

Run bundle install

Add the following line at at appropriate position in your application layout.

```<%= render partial: 'feedbacker/button_with_modal' unless current_user.is_guest? %>```
 
OR: If you only want the modal, and want to use your own button, use:

```<%= render partial: 'feedbacker/modal' unless current_user.is_guest? %>```

Then do something like this:
 
```link_to("Feedback", "#", data: { toggle: 'modal', target: '#modalFeedbackForm'})```


Run ```rake bootstrap_feedbacker:install:migrations``` to add migration to your app, and then run ```rake db:migrate``` to add the remarks table.

Create feedbacker.rb in config/initializers and add the following line.

```Feedbacker::SETTINGS.email_to = 'support@yourdomain.com'```

OR
```
  Feedbacker::SETTINGS.update do |settings|
    settings.email_to = 'support@yourdomain.com'
    settings.user_name_method = :name             # default value
    settings.email_prefix = '[FEEDBACKER]'        # default value
  end
```

Mount the gem in your routes file:
```
mount BootstrapFeedbacker::Engine => "/bootstrap_feedbacker"
```

Contributions

If have improvements to contribute to this gem, please feel free to fork, commit with tests (if applicable), and then send a pull request. Thank You!

Copyright (c) 2009-2013 WWIDEA, Inc. released under the MIT license
