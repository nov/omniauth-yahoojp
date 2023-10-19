# Fork of OmniAuth YahooJp

[This original gem](https://github.com/mikanmarusan/omniauth-yahoojp) isn't maintained anymore.

And Yahoo! JAPAN start rejecting UserInfo API access for many existing RPs.

This fork enables ID Token access w/o UserInfo API access.

In your `config/initializers/omniauth.rb`, specify `userinfo_access: false` like below.

```ruby
provider :yahoojp, YJ_CLIENT_ID, YJ_CLIENT_SECRET,
         {
           scope: 'openid',
           userinfo_access: false
         }
```

## Installation

```ruby
gem 'nov-omniauth-yahoojp'
```

## License

Copyright (c) 2013 by mikanmarusan
Copyright (c) 2023 by nov

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.