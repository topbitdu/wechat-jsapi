# Wechat JS API Library 微信JS API库

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/wechat-jsapi.svg)](https://badge.fury.io/rb/wechat-jsapi)

Wechat JS API library is a low level library for Wechat JS APIs. 微信JS API库是一个调用[微信JS API](http://mp.weixin.qq.com/wiki/11/74ad127cc054f6b80759c40f77ec03db.html)的低层库。

## Recent Update
Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wechat-jsapi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wechat-jsapi

## Usage

[Signature 签名算法](http://mp.weixin.qq.com/wiki/11/74ad127cc054f6b80759c40f77ec03db.html#.E9.99.84.E5.BD.951-JS-SDK.E4.BD.BF.E7.94.A8.E6.9D.83.E9.99.90.E7.AD.BE.E5.90.8D.E7.AE.97.E6.B3.95)
```ruby
signature = Wechat::JSAPI::Signature.create link, ticket, timestamp, nonce
```

[Get JS API Ticket 获得jsapi_ticket](http://mp.weixin.qq.com/wiki/11/74ad127cc054f6b80759c40f77ec03db.html#.E9.99.84.E5.BD.951-JS-SDK.E4.BD.BF.E7.94.A8.E6.9D.83.E9.99.90.E7.AD.BE.E5.90.8D.E7.AE.97.E6.B3.95)
```ruby
response = Wechat::JSAPI::Ticket.create access_token
if response.present? && 0==response['errcode'].to_i
  ticket     = response['ticket']
  expires_in = response['expires_in']
else
  # Show response['errmsg']
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/topbitdu/wechat-jsapi. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

