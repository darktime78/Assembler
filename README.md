# Assembler
My examples from the book "Beginning x64 Assembly Programming by Jo Van Hoey"
## Notes
### Set Start Address
The start address is usually set by a linker script.
The value __0x400000__ is the default value for the __SEGMENT_START()__ function on this platform.
Default linker script on GNU/Linux, looking at __/usr/lib/ldscripts/elf_x86_64.x__
You can find out more about linker scripts by browsing the linker manual:
> $ info ld Scripts
### Show a lots of information during link
> $ ld object.o -o object --verbose
### Show alignment in object file 
You can verify this with objdump -h <binary>.  
The 2\*\*4 in the Algn column is the 16-byte alignment. With 8-byte alignment this changes to 2\*\*3 and etc.
