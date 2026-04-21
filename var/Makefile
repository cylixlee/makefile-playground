.PHONY: hello world

VAR := "hello"

hello:
	@echo ${VAR}

world: VAR := "world"
world:
	@echo ${VAR}
	@$(MAKE) hello

again:
	@echo "Hello, ${VAR} again!"