# Snekky Language 🐍

The Snekky Programming Language

<a href="https://snekky.senkju.net/">Playground</a>

### Disclaimer!
Please do not take this project too seriously. I'm in no way a professional. To be honest, I'm surprised myself that Snekky is even somewhat usable.

## Installation
#### Compile it yourself
1. Download and install [Haxe](https://haxe.org/).
2. Clone this repository.
3. Compile the project by executing `haxe build.hxml`.

#### Download release binaries
Pre-compiled binaries can be found [here](https://github.com/snekkylang/snekky/releases).

## Usage

1. Create a file called `input.snek`
2. Run it using `Snekky.exe`

## Example
```
let add = func(a, b) {
    let result = a + b;

    print(result);
};

add(1, 2);

mut i = 0;
while i < 10 {
    print(
        if (i > 5) {
            "Snek";
        } else {
            i;
        }
    );

    i = i + 1;
}

func(msg) {
    print("Self-invoking function says " . msg);
}("Axolotls are cool!");
```

## Contributing

1. Fork it (<https://github.com/snekkylang/snekky/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Senk Ju](https://github.com/snekkylang/snekky) - creator and maintainer
