	.bank 0
	
	.org 0x0000
sleeping .ds 1

	.org MMC1_VROM_HIGH



reset:
	sei
	cld
	ldx #$ff
	stx SND_17_FRAME_IRQ
	ldx #$ff
	txs
	inx
	jsr audio_init
	stx PPU_00_CTRL1
	stx PPU_01_CTRL2
	stx SND_10_DMC_CTRL
	jsr wait_for_vblank
	jsr wait_for_vblank



load_palettes:
	lda PPU_02_STATUS
	lda #$3f
	sta VRAM_06_ADDR2
	ldx #$00
	sta VRAM_06_ADDR2
	ldx #$00
.load_palettes_loop:
	lda palette, x
	sta VRAM_07_IO
	inx
	cpx #$20
	bne .load_palettes_loop



	.include "audio.asm"
	.include "hello.asm"



main_loop:
	nop
	jmp main_loop



wait_for_vblank:
	bit PPU_02_STATUS
	bpl wait_for_vblank
	rts



wait_frame:
	inc sleeping
.wait_frame_loop:
	lda sleeping
	bne .wait_frame_loop
	rts



do_frame:
	lda #1
	jsr wait_frame



nmi:
	pha
	txa
	pha
	tya
	pha
	
	jsr audio_play_frame
	
	lda #$00
	sta sleeping
	
	pla
	tay
	pla
	tax
	pla
	rti
