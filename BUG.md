# Bug: File read error shows raw error code instead of descriptive message

## Observed Behavior

When running the interpreter with a non-existent file:

```bash
./build/main nonexistent.bf
```

Output:
```
Error: Could not read file: 54640704
```

## Expected Behavior

Should show a human-readable error message:

```
Error: Could not read file 'nonexistent.bf': No such file or directory
```

## Location

`src/main.kl` - the error handling for `fs.read_file()` result.

## Suggested Fix

Convert the `IoError` to a descriptive string instead of printing the raw error code. Include the filename in the error message for context.
