#define SWITCH_PIN 11
#define ALARM_PIN A5   // LED merah sebagai indikator alarm

void setup() {
  pinMode(SWITCH_PIN, INPUT_PULLUP);
  pinMode(ALARM_PIN, OUTPUT);
  digitalWrite(ALARM_PIN, LOW);
}

void loop() {
  if (digitalRead(SWITCH_PIN) == LOW) {
    // Pintu terbuka → LED berkedip (simulasi pulse buzzer)
    digitalWrite(ALARM_PIN, HIGH);
    delay(300);
    digitalWrite(ALARM_PIN, LOW);
    delay(300);
  } else {
    digitalWrite(ALARM_PIN, LOW);
  }
}
