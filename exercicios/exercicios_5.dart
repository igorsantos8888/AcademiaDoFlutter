void main() {
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  paciente.removeRange(3,5);

  for (var nomes in paciente) {
    var nome = nomes.split('|');
    print(nome[0] + ' tem ' + nome[1] + ' anos');
  }
}
