#ifndef __FORMATSTRING_H__
#define __FORMATSTRING_H__

namespace std {
String rjust(String toFormat, byte length, char character) {
  byte dif = length - toFormat.length();
  String temp = "";
  for (byte i = 0; i < dif; i++) {
    temp.concat(character);
  }
  temp.concat(toFormat);
  return temp;
}

String ljust(String toFormat, byte length, char character) {
  byte dif = length - toFormat.length();
  for (byte i = 0; i < dif; i++) {
    toFormat.concat(character);
  }
  return toFormat;
}
}  // namespace std

#endif  // __FORMATSTRING_H__