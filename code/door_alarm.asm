; =========================================
; Door Switch Monitoring with Buzzer Output
; Target: ATmega32
; =========================================

.include "m32def.inc"

; ---------- PIN CONFIGURATION ----------
.equ SWITCH_PIN = 3        ; PB3 (Input - Switch)
.equ BUZZER_PIN = 5        ; PC5 (Output - Buzzer)

; ---------- INITIALIZATION ----------
    CBI DDRB, SWITCH_PIN   ; Set PB3 as INPUT
    SBI DDRC, BUZZER_PIN   ; Set PC5 as OUTPUT

; ---------- MAIN PROGRAM ----------
LOOP:
    ; Cek kondisi switch
    SBIC PINB, SWITCH_PIN  ; Skip jika LOW (switch ditekan)
    RJMP LOOP              ; Jika HIGH → tetap looping

    ; Aktifkan buzzer (pulse cepat)
    SBI PORTC, BUZZER_PIN  ; HIGH
    CBI PORTC, BUZZER_PIN  ; LOW

    RJMP LOOP              ; Kembali monitoring
