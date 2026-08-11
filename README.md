# [asdf-chicken](https://github.com/joeljuca/asdf-chicken)

[![Build](https://github.com/joeljuca/asdf-chicken/actions/workflows/build.yml/badge.svg)](https://github.com/joeljuca/asdf-chicken/actions/workflows/build.yml)
[![Lint](https://github.com/joeljuca/asdf-chicken/actions/workflows/lint.yml/badge.svg)](https://github.com/joeljuca/asdf-chicken/actions/workflows/lint.yml)
[![Author](https://img.shields.io/badge/joeljuca.com-white?logo=google-chrome)](https://joeljuca.com)

[asdf](https://asdf-vm.com) plugin for [CHICKEN](https://www.call-cc.org).

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`, and [POSIX utilities](https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html)

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

Check [asdf-vm.com](https://asdf-vm.com/) for more instructions on how to install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/joeljuca/asdf-chicken/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Joel Jucá](https://github.com/joeljuca/)
