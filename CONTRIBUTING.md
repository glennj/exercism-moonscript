# Contributing to the MoonScript Track

... TODO -- types of contributions

## Creating a new Practice Exercise

1. Run

    ```sh
    bin/add-practice-exercise ${slug_name}
    ```

    This creates the scaffolding for the new exercise:

    - The test, stub and example files are empty.
    - The canonical data from problem-specifications gets added into your local `canonical-data` directory.
    - A stub test generator is created: `exercises/practice/${slug_name}/.meta/spec_generator.moon`

1. Review the canonical data and decide if there are any tests cases to exclude.

   If there are, add `include = false` properties in the exercise's `.meta/tests.toml` file.

1. Considering the canonical data, decide if this exercise makes sense to use a test generator.

    1. If no, delete the spec_generator.moon file and create the test suite manually:

        ```none
        exercises/practice/${slug_name}/${slug_snakecase_name}_spec.moon
        ```

        - Use the file `canonical-data/${slug_name}.json` to create the tests.
        - Remember, this track uses TDD, so the first test uses `it` and all the rest use `pending`.

    2. If yes:

        1. Edit the spec_generator.

            This is a MoonScript module that returns a table with 2 or 3 elements:

            - (required) _one_ of the following
                - `module_name`: (string) this is the left-hand side of `${module_name} = require '${slug_name}'` in the test file
                - `module_imports`: (list of strings) this is the list of names that appear in `import ${names} from require '${slug_name}'` in the test file
            - (required) `generate_test`: this is a function that creates the body of each test case. It takes 2 parameters:
                - `case` is the Lua object for the test case
                - `level`, default value 2, is the indentation level of the body.
            - (optional) `test_helpers`: (string) a block of code that gets added at the top of the top-level `describe` block.

            Look to see how it's implemented for other exercises.
            The `space-age` one is interesting: it uses the test_helpers block to register a custom assertion, and has expected errors.


        2. Run the generator script and review the new test suite.

            ```sh
            bin/generate-spec ${slug_name}
            ```

1. Create the example solution: `.meta/example.moon`

1. Test it with

    ```sh
    bin/test-one ${slug_name}
    ```

1. When you're satisfied with the solution, create the stub file `${slug_name}.moon`.
   Provide a stub for every function being tested.
   For classes, provide stubs for the constructor and each method.
   The stubbed function should emit an error.
   See what it looks like in other exercises.

1. Revisit the exercise difficulty in config.json if the implementation was harder/easier than expected.

1. Run `bin/configlet lint` to ensure that the new exercise conforms to Exercism standards.

