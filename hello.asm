hello_world:
	lda #$00
	sta PPU_01_CTRL2
	ldx #0
	lda PPU_02_STATUS
	lda #$20
	sta VRAM_06_ADDR2
	stx VRAM_06_ADDR2
.hello_world_top_blank:
	sta VRAM_07_IO
	inx
	bne .hello_world_top_blank
.hello_world_print:
	lda hello_string,x
	sta VRAM_07_IO
	inx
	cpx #$10
	bne .hello_world_print

	ldx #$50
	ldy #3
	lda #$20
.hello_world_bottom_blank:
	sta VRAM_07_IO
	inx
	bne .hello_world_bottom_blank
	dey
	bne .hello_world_bottom_blank

	ldx #$40
	lda #0
.hello_world_attribute_table:
	sta VRAM_07_IO
	dex
	bne .hello_world_attribute_table

	sta VRAM_05_ADDR1
	sta VRAM_05_ADDR1
	lda #%001000
	sta PPU_01_CTRL2
