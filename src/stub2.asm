START $0000

;INIT
BGCOLOR equ $1FC6
SIZES 	equ $1FC0
SCORELT	equ $1FC8
SCORERT	equ $1FC9


sprite0	equ $1F00
sprite1	equ $1F10
sprite2	equ $1F20
sprite3 equ $1F40

SPRITE0AX 	equ $1F0A
SPRITE0AY 	equ $1F0C
SPRITE1AX 	equ $1F1A
SPRITE1AY 	equ $1F1C
SPRITE2AX 	equ $1F2A
SPRITE2AY 	equ $1F2C
SPRITE3AX	equ $1F4A
SPRITE3AY	equ $1F4C
JOYSTICK1	equ $1FCC
JOYSTICK2	equ $1FCD

PITCH 		equ $1FC7
NOISE 		equ $1E80
;Tabelle Noten Werte Tondauer
N_HALBE		  equ 128
N_VIERTEL	  equ  64
N_ACHTEL      equ  32
N_SECHZEHNTEL equ  16
N_ABSETZ      equ   1

;Tabelle Tonhöhe
vlowD equ $64
vlowF equ $59
lowD equ $35
lowC equ $3B
lowF equ $2F
vlowB equ $3F
lowG equ $27
lowF equ $2C
vlowD equ $6B



SPR_COLL 	equ $1FCB
FLAG_PSU 	equ %01000000	; Maske: Flag-Bit für Joystick-Richtung
REG_PSL		equ %00010000	; Maske: Registersatz wählen

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MAIN LOOP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ORG $0000

bsta,un MAIN ; INTerupt-Bereich überspringen
; interrupt service routine
ISR:
	;STRA,r0 $1FAD				; R0 sichern
;	;pruefen ob Interrupt ein VBlank war
;	loda,r0 SPR_COLL			; Lade das Kollisionsregister (Bit 6 dort ist das VRLE-Flag)
;	rrl,r0						; Bit 6 wird zu Bit 7 und kann nun getestet werden:
;	bcfr,lt ISR_OUT	
;	;hier faengt die eigentliche Routine an
;	CPSL REG_PSL				; Registerbank 1 aktivieren
;	COMI,R2	$00					; Notenlaenge pruefen
;	BCTA,EQ	NEXT_NOTE			; Wenn abgelaufen, naechste note
;	SUBI,R2 $01					; laenge dekrementieren
;	BSTA,un ISR_OUT				
;	NEXT_NOTE:
;		LODA,R0 SONG,R1				; naechste Note laden
;		COMI,R1 $FF					; song ende?
;		BCTA,LT NO_END
;		LODI,R1 $00					; von vorne
;		LODA,R0 SONG,R1
;		NO_END:
;			STRA,R0 PITCH				; Note setzen
;			ADDI,R1 $01					; Index erhoehen
;			LODA,R2 SONG,R1				; Laenge holen
	
ISR_OUT:
	;LODA,r0 $1FAD				; R0 zurueck 			
	;PPSL REG_PSL				; Registerbank 2 aktivieren	
	RETC,un

; main part of the program	
MAIN:
PPSL REG_PSL				; Registerbank 2 aktivieren	

PPSU %00100000
PPSL %00000010

BSTA,UN SET_GFX 	; Grafikausgabe vorbereiten

BSTA,UN	INIT_BIRD	; Sprites initialisieren

LODI,r1 $ff
LODI,r2 $10			; Start-Position Y
LODI,r3 $00			; Animations-Index (aktuell ungenutzt) 
BLOOP:
	BSTA,UN WAIT_VRLE	; Auf VSync warten
	LODZ R2
	ADDA,r0 fall_table,r1+
	STRZ r2
	COMI,r1 $0f
	BCFA,EQ NEXT
	LODI,r1 $0e
	COMI,r2 $dc 		; 220 pixel 
	BCTA,GT DEATH		; stirb
NEXT:	
	BSTA,UN SET_BIRD	; Position setzen
	ADDI,r3 $01			; naechster Animationsschritt (TODO)
	COMI,r3 $05			; letzter Animationsschritt erreicht?
	BCTR,LT BLOOP		; Nein? dann weiter
	LODI,r3 $00			; Animations-Index auf $00
BSTA,UN BLOOP			; weiter

DEATH:

HALT					; sollte NIE erreicht werden

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SUBROUTINEN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

WAIT_VRLE:
	loda,r0 SPR_COLL			; Lade das Kollisionsregister (Bit 6 dort ist das VRLE-Flag)
	rrl,r0						; Bit 6 wird zu Bit 7 und kann nun getestet werden:
	bcfr,lt WAIT_VRLE			; Wenn nicht negativ (Bit 7 nicht gesetzt), springe zurück.
retc,un

SET_GFX:
; Grafik vorbereiten
	LODI,R0 %00001001
	STRA,R0 BGCOLOR

	LODI,R0 %01010101
	STRA,R0 SIZES

	LODI,R0 $FF
	STRA,R0 SCORELT
	STRA,R0 SCORERT
RETC,un


SET_BIRD:
; Subroutine zum setzen der 3 Sprites 
; R1  -> Bird X Position
; R2  -> Bird Y Position
; R3  -> Bird Animation step (0 - 2) (not implemented - TODO)
	STRA,r2 SPRITE0AY; setting X/Y Positions of all parts
	STRA,r2 SPRITE1AY
	STRA,r2 SPRITE2AY
	LODZ R3					; Flügelschlag
	ADDZ R2
	STRA,R0 SPRITE3AY

RETC,UN

INIT_BIRD:
; Subroutine zum Initialisieren der Sprites
; r0,r3 der aktuellen Registerbank werden "zerstört"
;
								; Grosse Schleife zum Kopieren aller Spritedaten
	LODI,r3 $ff					; autoincrement erhöht VOR der Adressberechnung, daher $ff als Startwert
	LOOP:						
		LODA,r0 blkbrd,r3,+		; und incrementieren vor dem ersten Zugriff mit Index
		STRA,r0 sprite0,r3
		LODA,r0 ylwbrd,r3
		STRA,r0 sprite1,r3
		LODA,r0 rdbrd,r3
		STRA,r0 sprite2,r3
		LODA,r0 FLUEGEL,r3
		STRA,r0 sprite3,r3
		COMI,r3 $09
	BCTR,LT LOOP
	;Farbe setzen
	LODI,r0 %00110001	; cyan gelb
	STRA,r0 $1FC1		; Sprite 0 & 1
	LODI,r0 %00011011	; rot rot
	STRA,r0 $1FC2		; Sprite 2 & 3
	;Sprite Größe setzen
	LODI,r0 $ff
	STRA,r0 $1F0B
	STRA,r0 $1F1B
	STRA,r0 $1F2B
	STRA,r0 $1F4B
	LODI,r0 $00
	STRA,r0 $1F0D
	STRA,r0 $1F1D
	STRA,r0 $1F2D
	STRA,r0 $1F4D
	LODI,R1 $3C			; stabile X-Position
	STRA,r1 SPRITE0AX
	STRA,r1 SPRITE1AX
	STRA,r1 SPRITE2AX
	STRA,r1 SPRITE3AX	
	;Ton initialisieren
	lodi,r0 $04				; Ton an: 04=sound, 10=noise 
	stra,r0 NOISE
	CPSL REG_PSL				; Registerbank 1 aktivieren
	LODI,R1 $00				; Notenposition auf 0
	LODI,R2 $00				; Notenlaenge Zaehler auf 0
	PPSL REG_PSL				; Registerbank 2 aktivieren	

	
RETC,UN

;TABELLEN:


blkbrd:		; Sprite Vogel Schwarzanteil
DB %00001100
DB %00010010
DB %00010110
DB %00010010
DB %00001110
DB %00000000
DB %00000000
DB %00000100
DB %00000000
DB %00000000
ylwbrd: ; Sprite Vogel Gelbanteil
DB %00000000
DB %00000000
DB %00000000
DB %00000000
DB %00000000
DB %00001110
DB %00011111
DB %00001000
DB %00000110
DB %00000000
rdbrd: ; Sprite Vogel Rotanteil 1. Phase
DB %00000000
DB %00100000
DB %00100000
DB %00100000
DB %00010000
DB %00010000
DB %00100000
DB %00110000
DB %00111000
DB %00010000
FLUEGEL:
DB %00000000
DB %00000000
DB %01100000
DB %11100000
DB %11100000
DB %11100000
DB %01100000
DB %00000000
DB %00000000
DB %00000000
fall_table:
DB $1,$1,$1,$1,$1,$1,$2,$2,$2,$2,$3,$3,$4,$4,$5,$6

SONG:
	DB vlowD, N_VIERTEL  ; Why
	DB vlowF, N_VIERTEL  ; do
	DB lowD,  N_HALBE	 ; birds
	DB vlowD, N_ABSETZ   ; ...
	DB lowD,  N_ACHTEL   ; sud-
	DB lowC,  N_ACHTEL   ; -den-
	DB lowD,  N_ACHTEL   ; -ly
	DB lowF,  N_ACHTEL   ; ap-
	DB vlowB, N_HALBE    ; -pear
	DB 0,     N_VIERTEL
	DB $ff,$00			 ; Song Ende