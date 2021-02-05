# I18nYamlSort

[![Build Status](https://travis-ci.org/GovTechSG/i18n_yaml_sort.svg?branch=master)](https://travis-ci.org/GovTechSG/i18n_yaml_sort)

Sort your locales (yml file) in alphabetical order for better readability.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'i18n_yaml_sort', git: https://github.com/idagds/i18n_yaml_sort.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install i18n_yaml_sort

## Usage

**Default:** Run `rake i18n:sort` to sort all your locales.

Pass the filename as a param to the task `rake i18n:sort path/to/yaml/file` to sort the given file alone.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/idagds/i18n_yaml_sort. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

