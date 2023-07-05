import 'dart:convert';
import 'dart:io';

class Utils {
  static String lerConsole(String texto) {
    print(texto);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerConsoleDouble(String texto) {
    do {
      try {
        var value = lerConsole(texto);
        if (value.contains(",")) {
          value = value.replaceAll(",", ".");
        }
        var valor = double.parse(value);
        if (valor <= 0) {
          return null;
        }
        return valor;
      } catch (e) {
        print("Valor inválido");
      }
    } while (true);
  }
}
