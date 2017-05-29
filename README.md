# FontAwesomeSelect

This gem allows listing all Font Awesome 4.7 icons easily, and create select
fields letting your users choose an icon for a specific field.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'font_awesome_select'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install font_awesome_select

## Usage

You can fetch an array of all icon names with :

```ruby
FontAwesomeSelect::Icons::NAMES
```

Use the `fa_icons_options` helper which is meant to be passed to the standard
`options_for_select` Rails helper.

> *Warning*: Native select inputs cannot render HTML as options label, which
is needed by the gem. Please use an appropriate plugin to render the labels.

```erb
<%= form.select :icon, options_for_select(fa_icons_options) %>
```

Use the selectize-specific helper :

```erb
<%= form.hidden_field :icon, value: fa_selectize_icons_options.to_json %>
```

And if you use [SimpleFormExtension](https://github.com/glyph-fr/simple_form_extension) :

```erb
<%= form.input :icon, as: :selectize, collection: fa_selectize_icons_options, escape: false %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/font_awesome_select.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

