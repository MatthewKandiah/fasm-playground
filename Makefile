default:
	rm -f ./hello.bin
	fasm hello_world.asm hello.bin
	chmod +x hello.bin
