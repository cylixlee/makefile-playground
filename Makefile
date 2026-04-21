DIRS := $(subst /,,$(shell ls -d */))
ARGS ?=

.PHONY: default
default:
	@                                       \
	echo "Usage: make <target> [ARGS=...]"; \
	echo "";                                \
	echo "Available targets:";              \
	for dir in $(DIRS); do                  \
		echo "  - $$dir";                   \
	done;                                   \
	echo ""

.PHONY: $(DIRS)
$(DIRS):
	@make --no-print-directory -C $@ $(ARGS)