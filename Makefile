all: fmt test lint

fmt:
	@echo "====> Formatting"
	stylua lua/

test:
	@echo "====> Testing"
	nvim --headless --clean \
		-u configs/minimal.vim \
		-c "PlenaryBustedDirectory lua/tests/ {minimal_init='configs/minimal.vim'}"

lint:
	@echo "====> Linting"
	luacheck lua --globals vim

docker-build:
	docker build --no-cache . -t plugname
