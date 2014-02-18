# Alchemy CMS Richmedia Essences

Adds EssenceAudio, EssenceFlash and EssenceVideo essences to your Alchemy CMS powered site.

This version is compatible with Alchemy version 2.7 and above.

For Alchemy v2.6.0 and below please use version 0.1.0.

## Installation

**Make sure you have Alchemy CMS installed.**

Add this line to your application's Gemfile:

    gem 'alchemy-richmedia-essences'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alchemy-richmedia-essences

## Usage

1. After installing, prepare your database with:

        $ rake alchemy_richmedia_essences:install:migrations db:migrate

2. In your `elements.yml` add one of the shiny new essences to your element of choice.

        # elements.yml
        - name: video
          contents:
          - name: file
            type: EssenceVideo

That's it!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
