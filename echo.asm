format ELF64 executable 3

;; linux sys call data taken from https://syscalls.w3challs.com/?arch=x86_64
newline = 10
STDIN_BUF_SIZE = 32

segment readable executable
;; echo stdin to stdout
;; STDIN fd = 0
;; STDOUT fd = 1

;; SYS_read = rax -> 0, rdi -> fd, rsi -> ptr to input, rdx -> size of input
mov rax, 0
mov rdi, 0
mov rsi, buf
mov rdx, buf_size
syscall

;; SYS_write = rax -> 1, rdi -> fd, rsi -> ptr to input, rdx -> size of input
mov rax, 1
mov rdi, 1
mov rsi, buf
mov rdx, buf_size
syscall

;; exit with code 0
mov rax, 60
mov rdi, 0
syscall

segment readable writeable
;; stdin buffer
buf rb STDIN_BUF_SIZE
buf_size = $-buf ;; I think rb will add 32 bytes with arbitrary values here, so this currentline - buf will get the right answer
