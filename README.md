# Framework LED Demo

This is a simple proof-of-concept of having the LED matrix displays on a Framework Laptop 16 display text. It is a small wrapper around using [inputmodule-rs](https://github.com/FrameworkComputer/inputmodule-rs). This script ensures that the text is persistent. It is designed to even work on immutable rpm-ostree and bootc systems.


## Usage

It is recommended, but not required, to run the scripts as a non-root user.

First, install the inputmodule-rs tool.

```
./install-tool.sh
```

Test it with the simple Bash loop. Specify two words to display separately on each of the 2 LED matrix displays.

```
./framework-led-simple.sh FRAME WORK
```

Install it as a persistent systemd service.

```
./framework-led-systemd.sh FRAME WORK
```


## License

[MIT](LICENSE)
