test:
	npm config set reset.styl:whatToTest $(test) && \
	npm test && \
	npm config set reset.styl:whatToTest '**'

.PHONY: test
