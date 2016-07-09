Signage
===
A middleman-powered template for static API documentation.
## Requirements
- Ruby
- bundler

## Getting started
1. Clone/fork the repo
- `cd` into the repo
- `bundle install`
- `bundle exec middleman server` to run the dev server at `localhost:4567`
- `bundle exec middleman build` to build a production version to the `build` folder

## Adding your own API spec
1. Create your a new yaml file in `data/<your_api_name>.yml`
- Define your API in the file, following the format in `data/sample_api.yml`
- In `config.rb`, change `config[:api]` from `sample_api` to `<your_api_name>`