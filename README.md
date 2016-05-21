# has_gravatar

[![Build Status](https://travis-ci.org/victorgama/has_gravatar.png?branch=master)](https://travis-ci.org/victorgama/has_gravatar) [![Dependency Status](https://gemnasium.com/victorgama/has_gravatar.png)](https://gemnasium.com/victorgama/has_gravatar)

has_gravatar is intended to add easy access to Gravatar URLs from ActiveRecord models.

## Installation

Add the following line to your `Gemfile`, depending on your Rails version:

### For Rails 5 and upward
```
gem 'has_gravatar', '~> 0.0.3'
```

### For Rails 4.2.6 and backwards
```
gem 'has_gravatar', '~> 0.0.2'
```

And install it:
```
$ bundle
```

After these two simple steps, has_gravatar is ready to be used on any ActiveRecord model.
In order to use it, call `has_gravatar`, passing one or more fields as argument. Example:
```ruby
class User < ApplicationRecord
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

## Contributing

If you find any problem using this gem, please fill an Issue. Pull requests are welcome. 🚢

## License

```
The MIT License (MIT)

Copyright (c) 2016 Victor Gama

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
