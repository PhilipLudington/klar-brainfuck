# Backlog

- A full `examples/squares.bf` that computes n² for n = 0–9 and prints the multi-digit results (16 … 81). Needs a custom divmod-by-10 routine: the usual `[->-[>+>>]>[+[-<+>]>+>>]<<<<<]` is wrong when the dividend is below the divisor. The multiply routine already works. (2026-11-10)
