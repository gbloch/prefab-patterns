# DesignOrigami

A tool to add design patterns into your code base that follow a highly
opinionated directory structure and encourage standardized patterns. No more
copy pasta. As an added benefit you get a living styleguide that genuinely
reflects the use of your design patterns.

We got our ideas for rendering design patterns using a method from [Mountain
View](https://github.com/jgnatch/mountain_view), and the notion for pre-made
design patterns from [Refills](https://github.com/thoughtbot/refills).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'design_origami'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install design_origami

## Usage (NOTHING ACTUALLY WORKS!)

This is currently an idea, and we are working to implement it. We hope that
eventually the usage will be as seen below. We are posting it here in the README
for anyone who would like to comment on the features, commands or any aspect of
this Gem.

#### Generating the patterns

Scaffolding via a command line tool that pulls (maybe via curl) patterns from
a library into your code base:

```
  $ patterns import card

  # app/views/patterns/card.html
  # app/assets/scripts/patterns/card.js
  # app/assets/styles/patterns/card.scss
```

#### Rendering the pattern

We use a simple method to render a design pattern into your markup. You pass
`locales` to populate the content of the pattern:

```
  object.each do
    render_pattern(:card,
      title: object.title,
      body_text: object.body_text
    );
  end
```

```
  render_pattern(:card,
    title: "Title"
    body_text: "Body Text"
  );
```

#### Styleguide

Generate the routes for the style guide with a command line command:

```
  $ patterns generate styleguide

  # app/controllers/patterns_controller.rb
  # app/views/patterns/styleguide.html
  # routes.rb ... modified
```

## To Do:

* Taxonomy of patterns (maybe via directory structure)
* Add typography etc.
* Repo/website of design patterns made by contributors

## Contributing

1. Fork it ( https://github.com/[my-github-username]/design_origami/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
