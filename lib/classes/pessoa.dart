class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome) {
    _nome = nome;
  }

  getNome() {
    return _nome;
  }

  getPeso() {
    return _peso;
  }

  getAltura() {
    return _altura;
  }

  setNome(String nome) {
    _nome = nome;
  }

  setPeso(double peso) {
    _peso = peso;
  }

  setAltura(double altura) {
    _altura = altura;
  }

  static double calcularIMC(double peso, double altura) {
    return double.parse((peso / (altura * altura)).toStringAsFixed(2));
  }

  static String classificacaoIMC(double imc) {
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      return "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      return "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      return "Saudável";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade grau I";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade grau II (severa)";
    } else {
      return "Obesidade grau III (mórbida)";
    }
  }
}
