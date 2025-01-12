# Omniauth::Gyazo

This is the unofficial OmniAuth strategy for authenticating to Instagram. To use it, you'll need to sign up for an OAuth2 Application ID and Secret on [Gyazo API](https://gyazo.com/api)

## Usage

    use OmniAuth::Builder do
      provider :gyazo, Rails.application.credentials.gyazo[:client_id], Rails.application.credentials.gyazo[:client_secret]
    end

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nna774/omniauth-gyazo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/nna774/omniauth-gyazo/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Omniauth::Gyazo project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/nna774/omniauth-gyazo/blob/master/CODE_OF_CONDUCT.md).
