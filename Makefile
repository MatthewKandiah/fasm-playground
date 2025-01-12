default:
	rm -f ./*.bin
	fasm hello_world.asm hello_world.bin
	fasm for_loop.asm for_loop.bin
	fasm echo.asm echo.bin
	chmod +x *.bin
