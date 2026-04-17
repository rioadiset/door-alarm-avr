# Door Alarm — AVR Assembly | ATmega32

Simulasi sistem alarm pintu menggunakan AVR Assembly
pada mikrokontroller ATmega32 di Proteus.

## Cara Kerja
- PB3 = input sensor pintu (switch + pull-up 4.7kΩ)
- Jika PB3 LOW (pintu terbuka) → pulse HIGH-to-LOW ke PC5
- PC5 mengaktifkan buzzer sebagai alarm

## Instruksi AVR yang Digunakan
| Instruksi | Fungsi |
|---|---|
| CBI DDRB, 3 | Set PB3 sebagai input |
| SBI DDRC, 5 | Set PC5 sebagai output |
| SBIC PINB, 3 | Skip jika PB3 LOW (pintu terbuka) |
| RJMP HERE | Loop balik monitoring |
| SBI PORTC, 5 | Set PC5 HIGH (mulai pulse) |
| CBI PORTC, 5 | Set PC5 LOW (buzzer aktif) |

## Tools
- Proteus (simulasi)
- AVR Assembly
- ATmega32

## File
- `code/door_alarm.asm` → source code Assembly
- `assets/` → screenshot & video simulasi
