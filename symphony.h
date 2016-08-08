; Title: Song Name
; Composer: Artist
; Maker: Maker

	.bank	0
	.if TOTAL_SONGS > 1
song_addr_table:
	dw	song_000_track_table
	.if (ALLOW_BANK_SWITCH)
song_bank_table:
	dw	song_000_bank_table
	.endif ; ALLOW_BANK_SWITCH
	.endif ; TOTAL_SONGS > 1
song_000_track_table:
	dw	song_000_00
	dw	song_000_01
	dw	song_000_02
	dw	song_000_03
	dw	song_000_04
	.if (ALLOW_BANK_SWITCH)
song_000_bank_table:
	db	bank(song_000_00)*2
	db	bank(song_000_01)*2
	db	bank(song_000_02)*2
	db	bank(song_000_03)*2
	db	bank(song_000_04)*2
	.endif

song_000_00:	;Trk A
	db	$fe,$80,$03,$08,$02,$07,$02,$0f	;Trk A; symphony.mml: 2
	db	$03,$08,$02,$07,$02,$0f,$03,$08	;Trk A; symphony.mml: 2
	db	$02,$07,$02,$0f,$0a,$1e,$0a,$08	;Trk A; symphony.mml: 2
	db	$09,$07,$07,$0f,$07,$08,$05,$07	;Trk A; symphony.mml: 3
	db	$03,$0f,$03,$08,$02,$07,$00,$0f	;Trk A; symphony.mml: 3
	db	$00,$1e,$02,$08,$00,$07,$00,$0f	;Trk A; symphony.mml: 3
	db	$02,$08,$00,$07,$00,$0f,$02,$08	;Trk A; symphony.mml: 4
	db	$00,$07,$00,$0f,$09,$1e,$09,$08	;Trk A; symphony.mml: 4
	db	$07,$07,$06,$0f,$06,$08,$03,$07	;Trk A; symphony.mml: 5
	db	$02,$0f,$02,$08,$00,$07,$0e,$0f	;Trk A; symphony.mml: 5
	db	$0e,$1e,$0a,$08,$09,$07,$09,$0f	;Trk A; symphony.mml: 5
	db	$10,$0f,$06,$0f,$09,$0f,$07,$0f	;Trk A; symphony.mml: 6
	db	$02,$1e,$0a,$08,$09,$07,$09,$0f	;Trk A; symphony.mml: 6
	db	$10,$0f,$06,$0f,$09,$0f,$07,$0f	;Trk A; symphony.mml: 7
	db	$0a,$0f,$09,$08,$07,$07,$05,$08	;Trk A; symphony.mml: 7
	db	$03,$07,$02,$3c,$01,$3c,$02,$1e	;Trk A; symphony.mml: 7
	db	$01,$1e,$02,$0f,$fc,$0f,$fc,$0f	;Trk A; symphony.mml: 8

song_000_00_lp:
	db	$fc,$ff,$ee
	db	bank(song_000_00_lp)*2
	dw	song_000_00_lp


song_000_01:	;Trk B

song_000_01_lp:
	db	$fc,$ff,$ee
	db	bank(song_000_01_lp)*2
	dw	song_000_01_lp


song_000_02:	;Trk C
	db	$fe,$8f
song_000_02_lp:
	db	$fc,$ff,$ee
	db	bank(song_000_02_lp)*2
	dw	song_000_02_lp


song_000_03:	;Trk D
	db	$fe,$8f
song_000_03_lp:
	db	$fc,$ff,$ee
	db	bank(song_000_03_lp)*2
	dw	song_000_03_lp


song_000_04:	;Trk E

song_000_04_lp:
	db	$fc,$ff,$ee
	db	bank(song_000_04_lp)*2
	dw	song_000_04_lp

