<div align="center">

# asdf-chicken [![Build](https://github.com/joeljuca/asdf-chicken/actions/workflows/build.yml/badge.svg)](https://github.com/joeljuca/asdf-chicken/actions/workflows/build.yml) [![Lint](https://github.com/joeljuca/asdf-chicken/actions/workflows/lint.yml/badge.svg)](https://github.com/joeljuca/asdf-chicken/actions/workflows/lint.yml)

[CHICKEN](https://www.call-cc.org) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`, and [POSIX utilities](https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html).
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add chicken
# or
asdf plugin add chicken https://github.com/joeljuca/asdf-chicken.git
```

CHICKEN:

```shell
# Show all installable versions
asdf list-all chicken

# Install specific version
asdf install chicken latest

# Set a version globally (on your ~/.tool-versions file)
asdf global chicken latest

# Now chicken commands are available
chicken -help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/joeljuca/asdf-chicken/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Joel Jucá](https://github.com/joeljuca/)
