# fasm-playground
Playing around with fasm

## Debugging
- Easiest way I've found so far is to use `edb-debugger` to step through instructions
- Alternative to use `gdb` or `lldb` is to use `readelf -h` to get the entry point address of the executable to set a breakpoint on that address directly. This still might be useful as programs get larger! I haven't found a way to set conditional breakpoints in edb yet. 

Some other debuggers to look at later:
- IDA free https://hex-rays.com/ida-free
- Ghidra https://ghidra-sre.org/
