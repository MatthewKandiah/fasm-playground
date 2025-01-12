default:
	rm -f ./*.bin
	fasm hello_world.asm hello_world.bin
	fasm for_loop.asm for_loop.bin
	chmod +x *.bin
