# sources := $(wildcard *.c)

main.pdf: *.tex
	./fastcompile.sh
