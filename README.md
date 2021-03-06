# usedby

Figure out where your gems are actually being used!
Similar to GitHub's "Used By" feature, but for private repos.

This gem installs a command line utility `usedby`, that
outputs a json file with a reverse dependency tree.

This acts more or less like GitHub's "Used By" feature.
It currently uses GitHub's code search API which has a few limitations:
https://help.github.com/en/github/searching-for-information-on-github/searching-code

## Installation

```sh
gem install usedby
```

## Usage

```sh
usedby GITHUB_ORGANIZATION [--direct] [--gems GEM1,GEM2,GEM3]
```

You will be securely prompted for a [GitHub Personal Access Token](https://github.com/settings/tokens).

For example, running `usedby rails --direct --gems railties,rake` produces output
like the following:

```json
{
  "railties": {
    "4.0.0.beta": [
      "routing_concerns/Gemfile.lock"
    ],
    "4.0.0": [
      "prototype-rails/Gemfile.lock"
    ],
    "4.2.1": [
      "rails-perftest/Gemfile.lock"
    ],
    "4.2.10": [
      "rails-docs-server/test/fixtures/releases/v4.2.10/Gemfile.lock"
    ],
    "5.1.1": [
      "actioncable-examples/Gemfile.lock"
    ],
    "5.2.1": [
      "rails_fast_attributes/Gemfile.lock"
    ],
    "5.2.2": [
      "globalid/Gemfile.lock"
    ],
    "6.0.1": [
      "webpacker/Gemfile.lock"
    ],
    "6.0.2.1": [
      "rails-contributors/Gemfile.lock"
    ],
    "6.1.0.alpha": [
      "rails/Gemfile.lock"
    ]
  },
  "rake": {
    "0.9.2.2": [
      "commands/Gemfile.lock",
      "etagger/Gemfile.lock",
      "routing_concerns/Gemfile.lock"
    ],
    "10.1.0": [
      "prototype-rails/Gemfile.lock"
    ],
    "10.4.2": [
      "jquery-ujs/Gemfile.lock",
      "rails-perftest/Gemfile.lock"
    ],
    "10.5.0": [
      "rails_fast_attributes/Gemfile.lock",
      "record_tag_helper/Gemfile.lock"
    ],
    "12.0.0": [
      "actioncable-examples/Gemfile.lock",
      "rails-docs-server/test/fixtures/releases/v4.2.10/Gemfile.lock",
      "rails-dom-testing/Gemfile.lock"
    ],
    "12.3.2": [
      "globalid/Gemfile.lock"
    ],
    "13.0.0": [
      "webpacker/Gemfile.lock"
    ],
    "13.0.1": [
      "rails-contributors/Gemfile.lock",
      "rails/Gemfile.lock"
    ]
  }
}

```
