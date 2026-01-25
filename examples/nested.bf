Test nested loops: print a 3x3 grid of stars

Memory layout:
  Cell 0: outer counter
  Cell 1: inner counter (reset each row)
  Cell 2: star character (42)
  Cell 3: newline character (10)

Setup star=42 and newline=10
>++++++[>+++++++<-]>>++++++++++

Now: cell0=0 cell1=0 cell2=42 cell3=10
Go to cell 0
<<<

Outer loop 3 times
+++[
  Reset inner to 3
  >+++[
    Print star from cell2
    >.<
    Decrement inner
    -
  ]
  Print newline from cell3
  >>.
  Back to outer counter
  <<<
  Decrement outer
  -
]
