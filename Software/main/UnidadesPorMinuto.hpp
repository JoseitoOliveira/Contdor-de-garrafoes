#ifndef __UNIDADESPORMINUTO_H__
#define __UNIDADESPORMINUTO_H__

#include <Arduino.h>

class UnidadePorMinuto {
 private:
  float *vetor;
  byte posicao = 0;
  byte ordem;
  unsigned long last_time = 0;

 public:
  UnidadePorMinuto(byte _ordem);
  void tick();
  float calc();
  void adicionar(float elemento);
  float media();
};

UnidadePorMinuto::UnidadePorMinuto(byte _ordem) {
  ordem = _ordem;
  vetor = new float[_ordem];
}
void UnidadePorMinuto::adicionar(float elemento) {
  vetor[posicao] = elemento;
  posicao += 1;
  if (posicao >= ordem) {
    posicao = 0;
  }
}

void UnidadePorMinuto::tick() {
  unsigned long now = millis();
  float period = (float)now - last_time;
  adicionar(period);
  last_time = now;
}

float UnidadePorMinuto::calc() {
  float soma = 0;
  for (byte i = 0; i < ordem; i++) {
    soma += vetor[i];
  }
  return 60 * 1000. / (soma / ordem);
}

#endif  // __UNIDADESPORMINUTO_H__
