Small exercices in Ruby -- RSpec 3 Edition
==========

### Set up instructions

1. Fork this repo
2. Clone your version of the repo to your local machine
3. On your local machine, `cd` into the root folder of this repo in your terminal
4. you will need rspec installed to make it work so `$ gem install rspec` if it is not the case yet

### Concept
This folder is full of small exercices you will have to do. Thoses exercices are Test Driven, which means the test files are written, and you will have to write to programs that make the tests pass. First you will work with `lib/00_hello.rb`, then it will be `lib/01_temperature.rb`, and so on.

### Getting started with the exercises
There are 7 test files, each of these files are about a ruby file. The first one exists (`lib/00_hello.rb`), the other do not exist yet (`01_temperature.rb`, etc). You will have to create them. But first let's work with the first program.

### The first program
If you run `$ rspec spec/00_hello_spec.rb`, the program will tell you that it expect the method `hello` to return `"Hello!"`, but it returns `nil` instead. Go to the file `lib/00_hello.rb` and you'll see that the hello method is empty. So write inside the method to make it work !


Do the same with `greet(name)`.

### The other programs
Next, you will have to make the test file `spec/01_temperature_spec.rb` work. If you run `$ rspec spec/01_temperature_spec.rb`, the program will give you error saying the file `lib/01_temperature.rb` does not exist. Create it and rerun the tests. Make the tests work, and go onto the next program. And so on.


Basically, this is "error-driven development"... you'll keep running tests, hitting error messages, fixing those messages, running more tests...  It is meant to not only test your Ruby skills but also get you comfortable seeing big scary looking stack traces and error messages.  Most of the development you do at first will be just like this.  In fact, most of *all* development is error-driven.  So get comfortable with it!

### Troubleshooting

* Don't name any of your directories with spaces in them! It will give you horribly frustrating error messages and code hates dealing with spaces.  For instance:

  ```language-bash
  # BAD:
  /Documents/My Homework/ruby

  # GOOD:
  /Documents/my_homework/ruby
  ```


### Credit

This is forked from [https://github.com/alexch/learn_ruby](https://github.com/alexch/learn_ruby), its original creator.
