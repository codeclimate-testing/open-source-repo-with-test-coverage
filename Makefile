.PHONY: image test

image:
	docker build -t codeclimate/cc-test-coverage .

test:
	./bin/run-image rspec

# set CI_TEST_REPORTER_ID when running
upload_coverage:
	./bin/run-image cc-test-reporter before-build
	./bin/run-image cc-test-reporter after-build \
		--coverage-endpoint https://cce-airbnb-unstable.codeclimate.net/api/v1/test_reports

