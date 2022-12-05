all: echoasm echo.jar echors echoc echohs
echoasm: echo.s.o
	ld echo.s.o -o echoasm
echo.s.o: echo.s
	nasm -f elf64 echo.s -o echo.s.o
echo.jar: echo.class
	jar cfe echo.jar echo echo.class
echo.class: echo.java
	javac echo.java
echors: echo.rs
	rustc echo.rs
echoc: echo.c
	$(CC) -o echoc echo.c
echohs: echo.hs
	# for some reason when I try to run ghc outright it breaks
	sh -c "ghc echo.hs"
	mv echo echohs
