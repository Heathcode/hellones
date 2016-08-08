	.rsset $0300



audio_disable_flag	.rs	1

	.bank 0
	.org MMC1_CTRL



audio_init:
	lda #$0f
	sta SND_15_CLOCK
	lda #$30
	sta SND_00_PULSE1_CTRL
	sta SND_04_PULSE2_CTRL
	sta SND_0C_NOISE_CTRL1
	lda #$80
	sta SND_08_TRI_CTRL1
	
	lda #$00
	sta audio_disable_flag
	
	rts



audio_disable:
	lda #$00
	sta SND_15_CLOCK
	lda #$01
	sta audio_disable_flag
	rts



audio_load:
	rts



audio_play_frame:
	lda audio_disable_flag
	bne .done
.done:
	rts
