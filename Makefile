echo.s.o: echo.s
	nasm -f elf64 echo.s -o echo.s.o
echoasm: echo.s.o
	ld echo.s.o -o echoasm
