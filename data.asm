	.include "effect.h"
	.include "symphony.h"



	.bank 1
	.org MMC1_PRG

palette:
	.db $0f,$19,$2b,$39, $0f,$17,$16,$06, $0f,$39,$3a,$3b, $0f,$3d,$3e,$0f
	.db $0f,$14,$27,$39, $0f,$27,$06,$2d, $0f,$0a,$29,$25, $0f,$02,$38,$3c

hello_string:
	.db "  Hello World!!!", $00



	.org $fffa
reset_vectors:
	.dw 0
	.dw reset
	.dw 0



	.bank 2
	.org $0000

tileset:
	.incbin "tileset.chr"

