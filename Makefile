# merge the current branch to main and push
merge_main:
	# get the name of the current branch
	$(eval BRANCH := $(shell git branch --show-current))
	# merge the current branch to main
	git checkout main
	git merge $(BRANCH)
	git push

check_uncommitted:
	@if git diff-index --quiet HEAD --; then \
		echo '\033[32mNo uncommitted changes found.\033[0m'; \
	else \
		echo '\033[31mUncommitted changes detected. Aborting.\033[0m'; \
		exit 1; \
	fi

# Run the formatters manually
# nicklockwood/SwiftFormat
# swiftformat --config .swiftformat --swiftversion 6.0 .
# apple/swift-format
# swift-format . -i -p --ignore-unparsable-files -r --configuration .swift-format
format: check_uncommitted
	find ./Sources -name "*.swift" -not -path "*/GeneratedSources/*" | xargs swift-format -i -p --ignore-unparsable-files --configuration .swift-format

	git add .
	# git commit -m "Format code"

# spm clean cache
clean_spm_cache:
	swift package purge-cache

generate-openapi:
	swift run swift-openapi-generator generate \
		--output-directory Sources/RevAI_AHC/GeneratedSources \
		--config Sources/RevAI_AHC/openapi-generator-config.yaml \
		openapi/v1/src/asyncTranscription.yaml
