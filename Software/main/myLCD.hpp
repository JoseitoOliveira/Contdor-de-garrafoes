#ifndef __MYLCD_H__
#define __MYLCD_H__

#define max_len 5

#include <Arduino.h>
#include <LiquidCrystal.h>

namespace lcd {
LiquidCrystal display(12, 11, 16, 17, 18, 19);
void begin() {
  display.begin(16, 2);
}
void inicio() {
  display.clear();
  display.setCursor(4, 0);
  display.print(F("Contagem"));
  display.setCursor(0, 1);
  display.print(F("A:Lmtd   B:Livre"));
}

void digitando() {
  display.setCursor(0, 0);
  display.print(F("Qtd:       A:Acc"));
  display.setCursor(0, 1);
  display.print(F("C:Cancelar D:Del"));
}

void contagem_limitada(unsigned int count, unsigned int max_cout, float upm) {
  String s_count = std::rjust(String(count), max_len, ' ');
  String s_max_count = std::ljust(String(max_cout), max_len, ' ');
  String s_upm = String(upm, 1);

  display.setCursor(0, 0);
  display.print("Qtd: " + s_count + "/" + s_max_count);
  display.setCursor(0, 1);
  display.print(s_upm + "upm C:Cancel ");
}

void contagem_livre(unsigned int count, float upm) {
  String s_count = std::ljust(String(count), max_len, ' ');
  String s_upm = String(upm, 1);

  display.setCursor(0, 0);
  display.print("Quantidade:" + s_count);
  display.setCursor(0, 1);
  display.print(s_upm + F(" upm C:Parar "));
}

void dialog(String st1, String st2) {
  display.clear();
  display.home();
  display.print(st1);
  display.setCursor(0, 1);
  display.print(st2);
}

}  // namespace lcd

#endif  // __MYLCD_H__
