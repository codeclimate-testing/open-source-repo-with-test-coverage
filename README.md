# repo with test coverage

This is a ruby codebase which has some tests, but not perfect coverage.

Run the following to run the tests and report coverage:

```shell
export CODECLIMATE_REPO_TOKEN=TOKENGOESHERE
bundle exec rspec && bundle exec codeclimate-test-reporter
```
