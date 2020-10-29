void main() {
  List<dynamic> pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  final idade = 20;
  int qtdIdade = 0;

  for (var paciente in pacientes) {
    var nomeSplit = paciente.split('|');
    if (int.tryParse(nomeSplit[1]) != null &&
        int.tryParse(nomeSplit[1]) > idade) qtdIdade++;
  }
  print(qtdIdade);

  List sobrenomesList = [];

  for (var paciente in pacientes) {
    var pacienteSplit = paciente.split('|');
    var sobrenomePaciente = pacienteSplit[0].split(' ').last;

    if (!sobrenomesList.contains(sobrenomePaciente)) {
      sobrenomesList.add(sobrenomePaciente);
      print("");
      print("Família $sobrenomePaciente");

      for (var paciente in pacientes) {
        var pacienteSplit = paciente.split('|');
        if (sobrenomePaciente.toLowerCase() ==
            pacienteSplit[0].split(' ').last.toLowerCase()) {
          print("${pacienteSplit[0]}");
        }
      }
    }
  }
// Baseado no array acima monte um relatório onde mostre
// Apresente a quantidade de pacientes com mais de 20 anos [V]
// Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
}
