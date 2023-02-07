# Calculator
## _A command line to help with basic mathematics_

Calculator is a basic command line tool that allows you to perform addition, subtraction, multiplication and division right in your terminal.

## Installation

Calculator requires [Ruby](https://www.ruby-lang.org/en/) v3.2+ to run.

After the repository is downloaded to your local machine, you'll need to install the project's dependencies
```sh
cd ./calculator
bundle install
```

## Usage

By running `bin/calculator` the terminal should print out a list of commands that you are able to use.
```sh
Commands:
  bin/calculator add [LEFT_OPERAND] --to [RIGHT_OPERAND] --to=TO             # Adds the two operands together and prints the result
  bin/calculator divide [LEFT_OPERAND] --by [RIGHT_OPERAND] --by=BY          # Divides the left operand by the right operand and prints the result
  bin/calculator help [COMMAND]                                              # Describe available commands or one specific command
  bin/calculator multiply [LEFT_OPERAND] --by [RIGHT_OPERAND] --by=BY        # Multiplies the left operand by the right operand and prints the result
  bin/calculator subtract [LEFT_OPERAND] --from [RIGHT_OPERAND] --from=FROM  # Subtracts the left operand from the right operand and prints the result
```

## Examples
### Add
```
$ bin/calculator add 10 --to 5
15
```

### Subtract
```
$ bin/calculator subtract 10 --from 5
5
```

### Mulitply
```
$ bin/calculator multiply 10 --by 5
50
```

### Divide
```
$ bin/calculator divide 10 --by 5
2
```

## Tests
```
$ bundle exec rspec .
Randomized with seed 47182
...................................................................

Finished in 0.01394 seconds (files took 0.0622 seconds to load)
67 examples, 0 failures

Randomized with seed 47182
```
