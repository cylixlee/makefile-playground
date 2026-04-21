.PHONY: all first second third fourth fifth

IMMEDIATE := "global"
REFERENCE  = $(IMMEDIATE)

# Result is
#
#   fourth
#   second
#   fourth
#   fourth
#   fourth
#
# Because Makefile is parsed first, the variables are assigned, then recipes are executed.
all:
	@$(MAKE) first
	@$(MAKE) second
	@$(MAKE) third
	@$(MAKE) fourth
	@$(MAKE) fifth

first:
	@echo "$(REFERENCE)"

second: IMMEDIATE := "second"
second:
	@echo "$(REFERENCE)"

third:
	@echo "$(REFERENCE)"

IMMEDIATE := "fourth"
fourth:
	@echo "$(REFERENCE)"

fifth:
	@echo "$(REFERENCE)"