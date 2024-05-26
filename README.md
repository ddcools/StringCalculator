# Simple String Calculator

This is a simple string calculator implemented in Ruby on Rails. It provides a method `add` with the following signature:

## Input

- `numbers`: A string of comma-separated numbers.

## Output

- An integer, which is the sum of the numbers provided in the input string.

## Features

1. **Handling Any Amount of Numbers**: The `add` method can handle any amount of numbers provided in the input string.

2. **Handling New Lines Between Numbers**: The `add` method can handle new lines between numbers instead of commas. For example, `"1\n2,3"` will return `6`.

3. **Support for Different Delimiters**: To change the delimiter, the beginning of the string will contain a separate line that looks like this: `//[delimiter]\n[numbers…]`. For example, `"//;\n1;2"` where the delimiter is `;` will return `3`.

4. **Negative Numbers Handling**: Calling `add` with a negative number will throw an exception with the message "negative numbers not allowed <negative_number>". If there are multiple negative numbers, all of them will be shown in the exception message, separated by commas.

## Usage

To use this string calculator, simply call the `add` method with the desired input string containing comma-separated numbers. The method will return the sum of the numbers.

```ruby
result = Calculators::StringCalculator.add("1,2,3")
puts result  # Output: 6
