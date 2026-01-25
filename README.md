# klar-brainfuck

A [Brainfuck](https://en.wikipedia.org/wiki/Brainfuck) interpreter written in [Klar](https://github.com/PhilipLudington/Klar).

## Building

Requires the Klar compiler (`klar` in PATH):

```bash
klar build src/main.kl
```

This outputs the executable to `main` in the current directory.

## Running

```bash
./main examples/hello.bf
```

Output:
```
Hello World!
```

## Brainfuck Commands

| Command | Description |
|---------|-------------|
| `>` | Move data pointer right |
| `<` | Move data pointer left |
| `+` | Increment byte at data pointer |
| `-` | Decrement byte at data pointer |
| `.` | Output byte at data pointer as ASCII character |
| `,` | Read byte from input into data pointer |
| `[` | If byte at pointer is zero, jump forward to matching `]` |
| `]` | If byte at pointer is nonzero, jump back to matching `[` |

All other characters are treated as comments.

## Example Programs

- `examples/hello.bf` - Classic "Hello World!"
- `examples/cat.bf` - Echo input to output (Ctrl+D to end)
- `examples/add.bf` - Add two single-digit numbers
- `examples/squares.bf` - Print squares of 0-9

## Implementation Details

- 30,000 cell tape (traditional size)
- 8-bit wrapping cells (overflow wraps around)
- Bounds checking on data pointer
- Unmatched bracket detection

## License

MIT
