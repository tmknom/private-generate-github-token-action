-include .makefiles/composite-action/Makefile
.makefiles/composite-action/Makefile:
	@git clone https://github.com/tmknom/makefiles.git .makefiles >/dev/null 2>&1

# Targets: Clean up
.PHONY: clean
clean: clean/release clean/test ## Clean up workflow run logs

.PHONY: clean/release
clean/release: ### Clean up release logs
	ids=$$(gh run list --workflow $(RELEASE_WORKFLOW) --json databaseId --jq '.[].databaseId') && \
	for run_id in $${ids}; do \
		gh run delete "$${run_id}"; \
	done

.PHONY: clean/test
clean/test: ### Clean up test logs
	ids=$$(gh run list --workflow $(TEST_WORKFLOW) --json databaseId --jq '.[].databaseId') && \
	for run_id in $${ids}; do \
		gh run delete "$${run_id}"; \
	done
