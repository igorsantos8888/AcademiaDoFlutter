main() {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  List<String> maiorIdade = [];
  List<String> duplicados = [];
  //var qtd;
  List<String> masc = [];
  List<String> fem = [];

  for (var nomes in pessoas) {
    var nomeSplit = nomes.split('|');
    if (int.tryParse(nomeSplit[1]) != null &&
        int.tryParse(nomeSplit[1]) >= 18) {
      maiorIdade.add(nomes);

      //print(nomes);
      print(nomes);
    }
  }

  print('');
  print('');

  for (var sexo in pessoas) {
    var sexoSplit = sexo.split('|');
    if (!sexoSplit[2].contains('Feminino')) {
      fem.add(sexo);
      print(sexo);
    }
  }
  print('');
  print('');

  for (var sexo2 in pessoas) {
    var sexoSplit = sexo2.split('|');
    if (!sexoSplit[2].contains('Masculino')) {
      masc.add(sexo2);
      print(sexo2);
    }
  }
  print('');
  print('');print('');
  print('');

  pessoas.forEach((nomes) {
    if (!duplicados.any((nome) => nome == nomes)) {
      duplicados.add(nomes);
    }
  });
  print(duplicados);
}
