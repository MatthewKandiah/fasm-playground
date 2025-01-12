format ELF64 executable 3

;; linux sys call data taken from https://syscalls.w3challs.com/?arch=x86_64
newline = 10

segment readable executable
;; write "Hello, World!\n" to stdout
;; STDOUT fd = 1
;; SYS_write = rax -> 1, rdi -> fd, rsi -> ptr to input, rdx -> size of input
mov rax, 1
mov rdi, 1
mov rsi, msg
mov rdx, msg_size
syscall

;; exit with code 0
mov rax, 60
mov rdi, 0
syscall

segment readable writeable
msg db 'Hello, World!', newline
msg_size = $-msg

