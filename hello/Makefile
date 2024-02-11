#makefile for hello
AS=nasm
ASFLAGS=-f elf64 -g -F dwarf
LD=ld
# -lc linking libc for function printf
LDFLAGS=-m elf_x86_64 -e main --dynamic-linker /lib/ld-linux-x86-64.so.2 -lc

TARGETS=hello hello2 hello3 hello4 hello_int
SOURCES=$(wildcard *.asm)
OBJECTS=$(SOURCES:.asm=.o)

.SILENT:
.PHONY: all clean

all: $(TARGETS) clean
		echo "Done!"

$(TARGETS): %: %.o
		$(LD) $(LDFLAGS) $< -o $@

$(OBJECTS): %.o: %.asm
		$(AS) $(ASFLAGS) $< -o $@ -l $(basename $@).lst

clean:
		rm -f $(OBJECTS)

distclean:
	rm -f $(OBJECTS) $(TARGETS) $(TARGETS:=.lst)


