# Fork of OmniAuth YahooJp

This original gem isn't maintained anymore.
https://github.com/mikanmarusan/omniauth-yahoojp

And Yahoo! JAPAN start rejecting UserInfo API access for many existing RPs.
This fork enables ID Token access w/o UserInfo API access.

In your `config/initializers/omniauth.rb`, specify `userinfo_access: false` like below.

```ruby
provider :yahoojp, YJ_CLIENT_ID, YJ_CLIENT_SECRET, { scope: 'openid', userinfo_access: false }
```