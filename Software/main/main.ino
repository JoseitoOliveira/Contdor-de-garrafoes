#include <Arduino_FreeRTOS.h>
#include <Bounce2.h>
#include <Keypad.h>
#include <LiquidCrystal.h>

#include "FormatString.hpp"
#include "Numero.hpp"
#include "UnidadesPorMinuto.hpp"
#include "myLCD.hpp"

#define elif else if
#define sensor_pin 2
#define reler_pin 13
#define max_len 5

enum Estados { inicio,
               contagem_limitada,
               contagem_livre,
               digitando
             } estado;

unsigned int max_count;
volatile unsigned int count = 0;
volatile bool sensor_changed = false;

Numero num(max_len);
UnidadePorMinuto upm(10);

// <Teclado>

char matrizteclado[4][4] = {{'1', '2', '3', 'A'},
  {'4', '5', '6', 'B'},
  {'7', '8', '9', 'C'},
  {'*', '0', '#', 'D'}
};

byte pinoslinhas[] = {3, 4, 5, 6};  // pinos utilizados nas linhas
byte pinoscolunas[] = {7, 8, 9, 10};  // pinos utilizados nas colunas

Keypad teclado =
  Keypad(makeKeymap(matrizteclado), pinoslinhas, pinoscolunas, 4, 4);
//</Teclado>

// Protótipos de funções
void func_inicio(char);
void func_contagem_limitada(char);
void func_contagem_livre(char);
void func_digitando(char);

void set_inicio() {
  estado = inicio;
  digitalWrite(reler_pin, LOW);
  count = 0;
  lcd::inicio();
}

void set_digitando() {
  estado = digitando;
  lcd::digitando();
}

void set_contagem_limitada(int max_cout) {
  estado = contagem_limitada;
  digitalWrite(reler_pin, HIGH);
  lcd::contagem_limitada(count, max_cout, 0);
}

void set_contagem_livre() {
  estado = contagem_livre;
  digitalWrite(reler_pin, HIGH);
  lcd::contagem_livre(count, 0);
}

char dialog(String st1, String st2, char opts[]) {
  lcd::dialog(st1, st2);

  while (true) {
    char tecla = teclado.getKey();
    if (tecla) {
      for (byte i = 0; i < sizeof(opts) / sizeof(char); i++) {
        if (opts[i] == tecla) {
          return tecla;
        }
      }
    }
    vTaskDelay(0);
  }
}

void task_tick_sensor(void *_sensor) {

  Bounce * sensor = (Bounce *) _sensor;
  while (true) {
    sensor->update();
    vTaskDelay(10 / portTICK_PERIOD_MS);
  }
}

void task_sensor(void *_sensor) {

  Bounce * sensor = (Bounce *) _sensor;

  while (true) {
    if (estado == contagem_limitada or estado == contagem_livre) {
      if (sensor->changed() and sensor->read() == HIGH) {
        count++;
        upm.tick();
        sensor_changed = true;
      }
    }
    vTaskDelay(30 / portTICK_PERIOD_MS);
  }
}

void task_state(void *pvParameters) {
  (void)pvParameters;

  lcd::begin();

  set_inicio();

  while (true) {
    char tecla = teclado.getKey();

    switch (estado) {
      case inicio:
        func_inicio(tecla);
        break;
      case contagem_limitada:
        func_contagem_limitada(tecla);
        break;
      case contagem_livre:
        func_contagem_livre(tecla);
        break;
      case digitando:
        func_digitando(tecla);
        break;
    }
    vTaskDelay(100 / portTICK_PERIOD_MS);
  }
}

void setup() {
  pinMode(reler_pin, OUTPUT);

  Bounce sensor = Bounce();
  sensor.attach(sensor_pin, INPUT);
  sensor.interval(10);

  TaskHandle_t task_State_Handle;
  TaskHandle_t task_Sensor_Handle;
  TaskHandle_t task_Tick_Sensor_Handle;

  xTaskCreate(
    task_state,
    "State", 255,
    (void *)&sensor,
    5,
    &task_State_Handle
  );

  xTaskCreate(
    task_tick_sensor,
    "Tick Sensor", 50,
    (void *)&sensor,
    10,
    &task_Tick_Sensor_Handle
  );

  xTaskCreate(
    task_sensor,
    "Sensor", 255,
    NULL,
    15,
    &task_Sensor_Handle
  );
}

void loop() {}

void func_inicio(char tecla) {
  switch (tecla) {
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case '0':
      set_digitando();
      num.clear();
      num.add(tecla);
      lcd::display.setCursor(4, 0);
      lcd::display.print(num.ljust());
      break;
    case 'A':
      set_digitando();
      num.clear();
      break;
    case 'B':
      set_contagem_livre();
      break;
  }
}

void func_digitando(char tecla) {
  switch (tecla) {
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case '0':
      num.add(tecla);
      lcd::display.setCursor(4, 0);
      lcd::display.print(num.ljust());
      break;
    case 'D':
      if (num.is_void()) {
        set_inicio();
      } else {
        num.del();
        lcd::display.setCursor(4, 0);
        lcd::display.print(num.ljust());
      }
      break;
    case 'A':
      if (not num.is_void()) {
        set_contagem_limitada(num.toInt());
        max_count = num.toInt();
      }
      break;
    case 'C':
      set_inicio();
      break;
  }
}

void func_contagem_limitada(char tecla) {
  switch (tecla) {
    case 'C':
      char nova_tecla = dialog("Cancel contagem?", "  A:Sim  C:Nao", "AC");
      if (nova_tecla == 'A') {
        set_inicio();
      } else {
        lcd::contagem_limitada(count, max_count, upm.calc());
      }
      break;
  }

  if (sensor_changed) {
    lcd::contagem_limitada(count, max_count, upm.calc());
    sensor_changed = false;
  }
  if (count >= max_count) {
    digitalWrite(reler_pin, LOW);
    char nova_tecla = dialog(
                        "Fim da contagem!",
                        " " + String(count) + "  A:Inicio",
                        "A");
    if (nova_tecla == 'A')
      set_inicio();
  }
}

void func_contagem_livre(char tecla) {
  switch (tecla) {
    case 'C':
      char nova_tecla = dialog("Parar contagem?", "  A:Sim  C:Nao", "AC");
      if (nova_tecla == 'A') {
        set_inicio();
      } else {
        lcd::contagem_livre(count, upm.calc());
      }
      break;
  }

  if (sensor_changed) {
    lcd::contagem_livre(count, upm.calc());
    sensor_changed = false;
  }
}
