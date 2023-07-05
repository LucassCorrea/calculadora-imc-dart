import 'package:calculadora_imc_dart/classes/pessoa.dart';
import 'package:calculadora_imc_dart/exceptions/nome_invalido_exception.dart';
import 'package:calculadora_imc_dart/utils/utils.dart';

void execute() {
  print("Seja bem-vindo(a) à Calculadora de IMC(Indíce de Massa Corporal).");
  String? nome;

  do {
    try {
      nome = Utils.lerConsole("Defina o seu nome: ");
      if (nome.trim() == "") {
        throw NomeInvalidoException();
      }
    } on NomeInvalidoException {
      print(NomeInvalidoException());
    } catch (e) {
      print(e);
    }
  } while (nome == "");

  var aluno = Pessoa(nome!);
  double? peso;
  double? altura;
  double calcular;
  String classificacao;

  do {
    peso = Utils.lerConsoleDouble("Informe seu peso(kg): ");
    altura = Utils.lerConsoleDouble("Informe seu altura(metros): ");

    if (peso != null && altura != null) {
      aluno.setPeso(peso);
      aluno.setAltura(altura);
    }
  } while (peso == null && peso == null);

  calcular = Pessoa.calcularIMC(aluno.getPeso(), aluno.getAltura());
  classificacao = Pessoa.classificacaoIMC(calcular);

  print("\n${aluno.getNome()}, seu Índice de Massa Corporal(IMC) é: $calcular");
  print("A sua classificação é: $classificacao");
}
