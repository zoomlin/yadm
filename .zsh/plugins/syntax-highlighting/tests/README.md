zsh-syntax-highlighting / tests
===============================

Utility scripts for testing zsh-syntax-highlighting highlighters.

The tests harness expects the highlighter directory to contain a `test-data`
directory with test data files.
See the [main highlighter](../highlighters/main/test-data) for examples.

Each test should define the array parameter `$expected_region_highlight`.
The value of that parameter is a list of `"$i $j $style [$todo]"` strings.
Each string specifies the highlighting that `$BUFFER[$i,$j]` should have;
that is, `$i` and `$j` specify a range, 1-indexed, inclusive of both endpoints.
If `$todo` exists, the test point is marked as TODO (the failure of that test point will not fail the test), and `$todo` is used as the explanation.

_Note_: `$region_highlight` uses the same `"$i $j $style"` syntax but interprets the indexes differently.

**Isolation**: Each test is run in a separate subshell, so any variables, aliases, functions, etc.,
it defines will be visible to the tested code (that computes `$region_highlight`), but will not affect
subsequent tests.  The current working directory of tests is set to a newly-created empty directory,
which is automatically cleaned up after the test exits.


highlighting test
-----------------
[`test-highlighting.zsh`](tests/test-highlighting.zsh) tests the correctness of the highlighting. Usage:

    zsh test-highlighting.zsh <HIGHLIGHTER NAME>

All tests may be run with

    make test

which will run all highlighting tests and report results in [TAP](http://testanything.org/) format.


performance test
----------------
[`test-perfs.zsh`](tests/test-perfs.zsh) measures the time spent doing the highlighting. Usage:

    zsh test-perfs.zsh <HIGHLIGHTER NAME>

All tests may be run with

    make perf
