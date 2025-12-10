# Contributing to the MoonScript Track

... TODO ...

## Creating a new Practice Exercise

1. Run 

    ```sh
    bin/add-practice-exercise ${slug_name}
    ```

    This creates the scaffolding for the new exercise.
    The test, stub and example files are empty.
    The canonical data from problem-specifications gets added into your local `./canonical-data` directory.

1. Review the canonical data and decide if there are any tests cases to exclude.

   If there are, add `include = false` properties in the exercise's `.meta/tests.toml` file.

1. Considering the canonical data, decide if this exercise makes sense to use a test generator.

    1. If no, create the test suite manually:

        ```none
        exercises/practice/${slug_name}/${slug_name}_spec.moon
        ```

        The filename can contain both hyphens and underscores. (TODO)

    2. If yes:

        1. Create this file:

            ```none
            exercises/practice/${slug_name}/.meta/spec_generator.moon
            ```

            This generator module returns a table with 2 or 3 elements:

            - `module_name` : this is the left-hand side of `${module_name} = require '${slug_name}'` in the test file
            - `generate_test` : this is a function that creates the body of each test case. It takes 2 parameters:
                - `case` is the Lua object for the test case 
                - `level`, default value 2, is the indentation level of the body.

           Look to see how it's implemented for other exercises.

        2. Run the generator and review the new test suite.

            ```sh
            bin/generate-spec ${slug_name}
            ```

1. Create the example solution: `.meta/example.moon`

1. Test it with 

    ```sh
    bin/test-one ${slug_name}
    ```

1. When you're satisfied with the solution, create the stub file `${slug_name}.moon`,.

    See what it looks like in other exercises.

1. Run `bin/configlet lint` to ensure that the new exercise conforms to Exercism standards.

