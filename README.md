# Mummy

[![Gem Version](https://badge.fury.io/rb/mummy.svg)](http://badge.fury.io/rb/mummy) [![Build Status](https://travis-ci.org/timrogers/mummy.svg)](https://travis-ci.org/timrogers/mummy)

Mummy makes it easy to test yourself for tests and exams. *Just like your mum did back when you were younger.*

## Usage

Install the gem *(Ruby 2.0.0 and later only)*:

```bash
$ gem install mummy
```

Then, run `mummy` with a path to a file to run your test from:

```bash
$ mummy GV101/Democracy.txt
$ mummy GV100/Plato.md --markdown-heading-level 1
```

You can write your tests in __Markdown__ (.md) and __plain-text__ (.txt) files. __Mummy__ will detect the right parser to use based on the file type, but you can specify this yourself with a `--parser` command line argument (e.g. `--parser markdown` or `--parser text`).

If you're using a text file, just separate the terms you want to be tested on with line breaks.

If you're using Markdown, prefix the terms to be tested on with `##` (i.e. write them as second-level headings). You can change the heading level you want to look for from the default of H2 (`##`) by specifying a `--markdown-heading-level` command line option (e.g. `--markdown-heading-level 1` will look for lines starting with one "#").

__Mummy__ will read the terms back to you in random order. Hit enter to move onto the next one, or enter an asterisk (`*`) before hitting enter if you want to run by that term again at the end.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/timrogers/mummy. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

