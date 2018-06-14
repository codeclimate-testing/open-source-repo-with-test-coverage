# repo with test coverage

This is a ruby codebase which has some tests, but not perfect coverage.

Run the following to setup a docker container and produce test coverage:

```shell
make image
make test
```

And run this to report those coverage results to `cce-airbnb-unstable`.

```shell
CC_TEST_REPORTER_ID=IDGOESHERE make upload_coverage
```

# FIXME
