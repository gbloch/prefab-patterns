# PrefabPatterns

Use the **prefab-patterns** gem to import design patterns into your rails app
from the command line. All the patterns are imported from [prefab patterns
marketplace](https://prefab-patterns-marketplace.herokuapp.com). The patterns
are very opinionated; from their file location to the markup itself. The
objective of the **prefab-patterns-gem** and **prefab-patterns-marketplace** are
to encourage scalability of an app, the standardization of patterns via views,
and to be able to generate a true living style guide. No more copy pasta. 

We got our idea for rendering design patterns using a method from
[Mountain View](https://github.com/jgnatch/mountain_view), and the notion
for pre-made design patterns from
[Refills](https://github.com/thoughtbot/refills).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'prefab_patterns'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install prefab_patterns
```

## Usage

### Import a pattern

With prefab_patterns you can import a pattern directly into your rails
app. The directory structure is highly opinionated, so at this time we
don't allow for any customization of file placement.

To import a pattern into your rails app from the command line:

```bash
$ prefab_patterns import pattern_name
```

Will create these files:

  * `app/views/patterns/pattern_name.html.erb`

  * `app/assets/scripts/patterns/pattern_name.coffee`

  * `app/assets/styles/patterns/pattern_name.scss`

  * Importing a pattern will overwrite files without warning.

### Render a pattern

We use a helper method to render a design pattern into your markup. You
pass `locales` to populate the content of the pattern:

```erb
<%= render_pattern(:card, title: "title", text: "some text"); %>
```

```erb
<%= object.each do %>
  <%= render_pattern(:card, title: object.title, text: object.text); %>
<% end %>
```

### Generate Your Style guide (not available yet)

You can generate a style guide that will show you all of the patterns in
your application. Generate the routes for the style guide with the
following command line command:

```bash
$ patterns generate style_guide
```

Will create these files:

  * `app/controllers/patterns_controller.rb`

  * `app/views/patterns/style_guide.html.erb`

And modify:

  * `routes.rb`

## Project Management

We are using this repo's [Github
issues](https://github.com/jasonramirez/prefab-patterns/issues)
to manage features in the works, feature requests, bugs and
all questions related to this gem.

## Known issues

This gem is currently at version 0.0.1 so use at your own risk.

* Importing a pattern will overwrite files without warning.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/prefab-patterns/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
