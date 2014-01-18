has_gravatar
============

[![Build Status](https://travis-ci.org/victorgama/has_gravatar.png?branch=master)](https://travis-ci.org/victorgama/has_gravatar) [![Dependency Status](https://gemnasium.com/victorgama/has_gravatar.png)](https://gemnasium.com/victorgama/has_gravatar)

has_gravatar is intended to add easy access to gravatar URLs from Active Record models. 

Installation
------------

has_gravatar is distributed as a gem, which is how it should be used in your app.

First, include the gem in your Gemfile:
`gem "has_gravatar"`
And install it:
`bundle`

After these two simple steps, has_gravatar is ready to be used on any Active Record model.
In order to use it, call `has_gravatar`, passing one or more fields as argument. Example:
```ruby
class User < ActiveRecord::Base
	has_gravatar :primary_email, :secondary_email, :email
end
```

Now, to get the Gravatar URL of a model, use:
```ruby
user = User.first

# Returns http://gravatar.com/avatar/<hash>
user.email_gravatar
	
# Supports default images
user.email_gravatar default_avatar: 'http://my.domain.com/public/default_gravatar.png'
	
# And sizing
user.email_gravatar default_avatar: 'http://my.domain.com/public/default_gravatar.png', size: 128
	
# And HTTPS
user.email_gravatar default_avatar: 'http://my.domain.com/public/default_gravatar.png', size: 128, secure: true

```