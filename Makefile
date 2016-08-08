AS=nesasm
MCKC=ppmckc

all: music
	$(AS) build.asm

music:
	$(MCKC) symphony.mml
