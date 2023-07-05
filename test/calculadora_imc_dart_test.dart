import 'package:calculadora_imc_dart/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group("Calcular o IMC", () {
    var values = <Map<String, double>, double>{
      {"peso": 100, "altura": 1.80}: 30.86,
      {"peso": 80, "altura": 1.70}: 27.68,
      {"peso": 60, "altura": 1.60}: 23.44,
      {"peso": 30, "altura": 1.50}: 13.33,
      {"peso": 50, "altura": 1.40}: 25.51,
    };

    values.forEach((values, expected) {
      test("Calcular o IMC", () {
        expect(Pessoa.calcularIMC(values['peso']!, values['altura']!),
            equals(expected));
      });
    });
  });
}
