START $0000

;Scratchpad-RAM:
R0SCRATCH     equ $1f0e
R1SCRATCH     equ $1f0f
R2SCRATCH     equ $1f1e
R3SCRATCH     equ $1f1f

FLAPFLAG      equ $1f4e

BGCOLOR       equ $1fc6
SIZES         equ $1fc0
SCORELT       equ $1fc8
SCORERT       equ $1fc9

SPRITE0       equ $1f00
SPRITE1       equ $1f10
SPRITE2       equ $1f20
SPRITE3       equ $1f40

SPRITE0AX     equ $1f0a
SPRITE0AY     equ $1f0c
SPRITE1AX     equ $1f1a
SPRITE1AY     equ $1f1c
SPRITE2AX     equ $1f2a
SPRITE2AY     equ $1f2c
SPRITE3AX     equ $1f4a
SPRITE3AY     equ $1f4c
JOYSTICK1     equ $1fcc
JOYSTICK2     equ $1fcd
P1MIDDLEKEYS  equ $1e89

PITCH         equ $1fc7
NOISE         equ $1e80
;Tabelle Noten Werte Tondauer
N_HALBE       equ 128
N_VIERTEL     equ  64
N_ACHTEL      equ  32
N_SECHZEHNTEL equ  16
N_ABSETZ      equ   1

;Tabelle Tonhöhe
vlowD         equ $64
vlowF         equ $59
lowD          equ $35
lowC          equ $3b
lowF          equ $2f
vlowB         equ $3f
lowG          equ $27
lowF          equ $2c
vlowD         equ $6b


SPR_COLL      equ $1fcb
FLAG_PSU      equ %01000000 ; Maske: Flag-Bit für Joystick-Richtung
REG_PSL       equ %00010000 ; Maske: Registersatz wählen

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CARTRIDGE START
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ORG $0000
    BCTA,un MAIN            ; INTerupt-Bereich überspringen

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INTERRUPT SERVICE ROUTINE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ISR:
    STRA,r0 R0SCRATCH       ; R0 sichern
    STRA,r1 R1SCRATCH       ; R1 sichern
    STRA,r2 R2SCRATCH       ; R2 sichern
    STRA,r3 R3SCRATCH       ; R3 sichern

    LODA,r0 P1MIDDLEKEYS    ; Maske Taste 2 linker Controller
    TMI,r0  %10000000       ; 2 gedrückt?
    BCFR,eq ISR_OUT         ; Return, wenn NOT "2" (spaeter SKIP_JOY)
    LODI,r0 %11000000
    STRA,r0 FLAPFLAG        ; Flapflag setzen

    ;Prüfen ob Interrupt ein VBlank war
    ;LODA,r0 SPR_COLL       ; Lade das Kollisionsregister (Bit 6 dort ist das VRLE-Flag)
    ;RRL,r0                 ; Bit 6 wird zu Bit 7 und kann nun getestet werden:
    ;BCFR,lt ISR_OUT
    ;Hier fängt die eigentliche Routine an
    ;CPSL REG_PSL           ; Registerbank 1 aktivieren
    ;COMI,r2 $00            ; Notenlaenge pruefen
    ;BCTA,eq NEXT_NOTE      ; Wenn abgelaufen, naechste note
    ;SUBI,r2 $01            ; laenge dekrementieren
    ;BSTA,un ISR_OUT
;NEXT_NOTE:
    ;LODA,r0 SONG,r1        ; naechste Note laden
    ;COMI,r1 $FF            ; song ende?
    ;BCTA,lt NO_END
    ;LODI,r1 $00            ; von vorne
    ;LODA,r0 SONG,r1
;NO_END:
    ;STRA,r0 PITCH          ; Note setzen
    ;ADDI,r1 $01            ; Index erhoehen
    ;LODA,r2 SONG,r1        ; Laenge holen

ISR_OUT:
    LODA,r0 R0SCRATCH      ; R0 restore
    LODA,r1 R1SCRATCH      ; R1 restore
    LODA,r2 R2SCRATCH      ; R2 restore
    LODA,r3 R3SCRATCH      ; R3 restore
    RETE,un

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MAIN PROGRAM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
MAIN:
    PPSL REG_PSL           ; Registerbank 2 aktivieren

    PPSU %00100000
    PPSL %00000010

    BSTA,un SET_GFX        ; Grafikausgabe vorbereiten
    BSTA,un INIT_BIRD      ; Sprites initialisieren

    CPSU %00100000         ; Interrupts aktivieren

    LODI,r1 $ff            ; Indexregister initialisieren (-1)
    LODI,r2 $10            ; Start-Position Y
    LODI,r3 $00            ; Animations-Index (aktuell ungenutzt)
BLOOP:
    BSTA,un WAIT_VRLE      ; Auf VSync warten
    LODA,r0 FLAPFLAG       ; Testen ob ...
    TMI,r0 %10000000       ; ... geflapt wird
    BCFR,eq FALL           ; wenn nicht: fallen
    TMI,r0 %11000000       ; sonst testen ...
    BCFR,eq FLAP           ; ob Vogel schon steigt
    LODI,r1 $10            ; Indexregister initialisieren
    ANDI,r0 %10111111      ; Testbit Index wurde initialisiert; erlaubt jetzt weiteres ansteigen!
    STRA,r0 FLAPFLAG
FLAP:                      ; Wenn Vogel bereits steigt
    LODZ r2                ; Y-Position laden
    SUBA,r0 FLY_TABLE,r1-  ; Fly_table rückwärts lesen
    STRZ r2                ; Y-Position zurückkopieren
    BRNR,r1 NEXT           ; Anfang fly_table erreicht?
    LODI,r0 $00            ; Flap-Flag ...
    STRA,r0 FLAPFLAG       ; ... zurücksetzen
    ;LODI,R1 $FF           ; Index fuer FALL vorbereiten -> verursacht Fehler!!!
FALL:
    LODZ r2                ; Y-Position kopieren
    ADDA,r0 FLY_TABLE,r1+
    STRZ r2
    COMI,r1 $0f            ; Ende fly_table erreicht?
    BCFA,eq NEXT
    LODI,r1 $0e
    COMI,r2 $dc            ; 220 pixel
    BCTA,gt DEATH          ; stirb
NEXT:
    BSTA,un SET_BIRD       ; Position setzen
    ADDI,r3 $01            ; naechster Animationsschritt (TODO)
    COMI,r3 $05            ; letzter Animationsschritt erreicht?
    BCTR,lt BLOOP          ; Nein? dann weiter
    LODI,r3 $00            ; Animations-Index auf $00
    BCTA,un BLOOP          ; weiter

DEATH:
    HALT                   ; sollte NIE erreicht werden

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SUBROUTINEN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
WAIT_VRLE:
    LODA,r0 SPR_COLL       ; Lade das Kollisionsregister (Bit 6 dort ist das VRLE-Flag)
    RRL,r0                 ; Bit 6 wird zu Bit 7 und kann nun getestet werden:
    BCFR,lt WAIT_VRLE      ; Wenn nicht negativ (Bit 7 nicht gesetzt), springe zurück.
    RETC,un

SET_GFX:                   ; Grafik vorbereiten
    LODI,r0 %00001001
    STRA,r0 BGCOLOR

    LODI,r0 %01010101
    STRA,r0 SIZES

    LODI,r0 $ff
    STRA,r0 SCORELT
    STRA,r0 SCORERT
    RETC,un

; Subroutine zum setzen der 3 Sprites
; R1  -> Bird X Position
; R2  -> Bird Y Position
; R3  -> Bird Animation step (0 - 2) (not implemented - TODO)
SET_BIRD:
    STRA,r2 SPRITE0AY      ; setting X/Y Positions of all parts
    STRA,r2 SPRITE1AY
    STRA,r2 SPRITE2AY
    LODZ r3                ; Flügelschlag
    ADDZ r2
    STRA,r0 SPRITE3AY
    RETC,un

INIT_BIRD:
; Subroutine zum Initialisieren der Sprites
; r0,r3 der aktuellen Registerbank werden "zerstört"

    ; Grosse Schleife zum Kopieren aller Spritedaten
    LODI,r3 $ff            ; autoincrement erhöht VOR der Adressberechnung, daher $ff als Startwert
LOOP:
    LODA,r0 BLKBRD,r3+    ; und incrementieren vor dem ersten Zugriff mit Index
    STRA,r0 SPRITE0,r3
    LODA,r0 YLWBRD,r3
    STRA,r0 SPRITE1,r3
    LODA,r0 RDBRD,r3
    STRA,r0 SPRITE2,r3
    LODA,r0 FLUEGEL,r3
    STRA,r0 SPRITE3,r3
    COMI,r3 $09
    BCTR,lt LOOP
    ;Farbe setzen
    LODI,r0 %00110001      ; cyan gelb
    STRA,r0 $1fc1          ; Sprite 0 & 1
    LODI,r0 %00011011      ; rot rot
    STRA,r0 $1fc2          ; Sprite 2 & 3
    ;Sprite Größe setzen
    LODI,r0 $ff
    STRA,r0 $1f0b
    STRA,r0 $1f1b
    STRA,r0 $1f2b
    STRA,r0 $1f4b
    LODI,r0 $00
    STRA,r0 $1f0d
    STRA,r0 $1f1d
    STRA,r0 $1f2d
    STRA,r0 $1f4d
    LODI,r1 $3c            ; stabile X-Position
    STRA,r1 SPRITE0AX
    STRA,r1 SPRITE1AX
    STRA,r1 SPRITE2AX
    STRA,r1 SPRITE3AX
    ;Ton initialisieren
    LODI,r0 $04            ; TON an: 04=sound, 10=noise
    STRA,r0 NOISE
    CPSL REG_PSL           ; Registerbank 1 aktivieren
    LODI,r1 $00            ; Notenposition auf 0
    LODI,r2 $00            ; Notenlaenge Zaehler auf 0
    PPSL REG_PSL           ; Registerbank 2 aktivieren
    RETC,un

;TABELLEN:


BLKBRD:                    ; Sprite Vogel Schwarzanteil
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
YLWBRD:                    ; Sprite Vogel Gelbanteil
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
RDBRD:                     ; Sprite Vogel Rotanteil 1. Phase
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
FLY_TABLE:
    DB $01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$04,$04,$05,$06

SONG:
    DB vlowD, N_VIERTEL  ; Why
    DB vlowF, N_VIERTEL  ; do
    DB lowD,  N_HALBE    ; birds
    DB vlowD, N_ABSETZ   ; ...
    DB lowD,  N_ACHTEL   ; sud-
    DB lowC,  N_ACHTEL   ; -den-
    DB lowD,  N_ACHTEL   ; -ly
    DB lowF,  N_ACHTEL   ; ap-
    DB vlowB, N_HALBE    ; -pear
    DB 0,     N_VIERTEL
    DB $ff,$00           ; Song Ende
