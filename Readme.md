## A bunch of parsers

This is a collection of implementations of a json-parser in different languages.
The parser should be able to parse a json-string and return a data-structure that can be used in the language.
The parser should be able to handle json-strings that are not formatted correctly and should return an error in that case.

## Notes

- The speed is not important
- Will probably use a recursive descent parser
- Need to cover all the parsing tests [here](https://github.com/nst/JSONTestSuite.git)

## Coverage

- **Zig**: 200/318 passed, 118 failed
