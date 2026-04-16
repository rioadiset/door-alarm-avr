# Door Alarm — AVR Assembly Style | Arduino Uno

Simulasi sistem alarm pintu menggunakan Arduino Uno di Wokwi.

## Cara Kerja
- Pin 11 (PB3) = input sensor pintu (push button + pull-up 4.7kΩ)
- Jika PB3 LOW (pintu terbuka) → pulse HIGH-to-LOW ke A5 (PC5)
- A5 (PC5) mengaktifkan buzzer sebagai alarm

## Referensi Instruksi AVR
| Instruksi | Fungsi |
|---|---|
| CBI DDRB, 3 | Set PB3 sebagai input |
| SBI DDRC, 5 | Set PC5 sebagai output |
| SBIC PINB, 3 | Skip jika PB3 LOW |
| RJMP HERE | Loop balik |
| SBI PORTC, 5 | Set PC5 HIGH |
| CBI PORTC, 5 | Set PC5 LOW (pulse) |

## Tools
- Wokwi Simulator
- Arduino Uno (ATmega328P)

## File
- code/door_alarm.ino → source code
- assets/ → screenshot & video simulasi
