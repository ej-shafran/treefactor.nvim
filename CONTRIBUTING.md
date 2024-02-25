# CONTRIBUTING

Thank you for wanting to contribute to plugname!

## Issues

You're welcome to open issues for any bugs or feature requests you may find. Please search for similar issues before opening, and use the issue template to make the problem easy to reproduce.

## Pull requests

Pull requests are welcome, however please make sure your pull request passes CI. Pull requests that do not pass CI will not be accepted.

### Formatting

Use `make fmt` to run [stylua](https://github.com/johnnymorganz/stylua) and format the code.

### Linting

Use `make lint` to run [luacheck]() on the code, to check for linting issues.

### Tests

Use `make test` to run all the `_spec.lua` files in `lua/tests`. This requires that all dependencies be installed (see the `plugins` list in `configs/minimal.vim`). It's recommended that you write a test for your pull request.

### All of the above

Simply running `make` will do all of the above.
