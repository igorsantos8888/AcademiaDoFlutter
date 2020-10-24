void main() {
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  List<dynamic> menorIdade = [];
  List<dynamic> novoArray = [];

  paciente.forEach((paciente) {
    novoArray.add(paciente.split('|'));
    novoArray.forEach((item) {
      if (int.parse(item[1]) > 18) {
        if (!menorIdade.contains(item[1])) {
          menorIdade.add(item[1]);
        }
      }
    });
  });

  print(menorIdade);
}
