# AlchemyCMS HTML5 Richmedia Essences

Adds HTML5 `EssenceAudio` and `EssenceVideo` essences to your AlchemyCMS powered website.

## Alchemy version

**This gem has been merged into Alchemy v6.**

You can safely remove it from your Gemfile after upgrading to Alchemy v6.

This version is compatible with Alchemy v4 and v5 only.

- For Alchemy v3.x please use version 1.0.0.
- For Alchemy v2.7.0 please use version 0.2.0.
- For Alchemy v2.6.0 and below please use version 0.1.0.

Also this plugin does not contain a `EssenceFlash` any more. If you need `EssenceFlash`, you need to use version 0.3-stable.

## Installation

**Make sure you have AlchemyCMS installed.**

Add this line to your application's Gemfile:

~~~ruby
gem 'alchemy-richmedia-essences', github: 'AlchemyCMS/alchemy-richmedia-essences', branch: 'main'
~~~

And then execute:

~~~shell
$ bundle install
~~~

## Usage

1) After installing or updating, prepare your database with:

~~~shell
$ rake alchemy_richmedia_essences:install:migrations db:migrate
~~~

2) In your `elements.yml` add one of these essences to your element of choice.

~~~yaml
# elements.yml
- name: video
  contents:
  - name: video
    type: EssenceVideo

- name: audio
  contents:
  - name: audio
    type: EssenceAudio
~~~

## Player customization

This plugin just provides HTML5 `<video>` and `<audio>` tags and no styling at all. The players will appear as the browser vendors provide.

If you want a cross browser and customizable player with Flash® fallback, then we strongly recommend something like http://mediaelementjs.com/

There is even a gem https://github.com/tobsch/mediaelement_rails that provides everthing for the Rails' asset pipeline.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
