#ifndef __NUMERO_H__
#define __NUMERO_H__

#include "FormatString.hpp"

class Numero {
 private:
  byte max_len;
  String num = "";

 public:
  Numero(byte);
  void add(char);
  void del();
  int toInt();
  String ljust();
  String rjust();
  bool is_void();
  void clear();
};

Numero::Numero(byte max_len) {
  this->max_len = max_len;
}

int Numero::toInt(){
  return this->num.toInt();
}

void Numero::clear() { this->num = ""; }

void Numero::add(char key) {
  if (this->num.length() < this->max_len) {
    this->num.concat(key);
  }
};

void Numero::del() {
  byte len = this->num.length();
  if (len >= 1) {
    this->num.remove(len - 1);
  }
}

String Numero::ljust() {
  return std::ljust(this->num, this->max_len, ' ');
}

String Numero::rjust() {
  return std::rjust(this->num, this->max_len, ' ');
}

bool Numero::is_void() {
  if (this->num.length() > 0) {
    return false;
  } else {
    return true;
  }
}

#endif // __NUMERO_H__