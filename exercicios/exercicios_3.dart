void main() {
  String nomes = '''
      Pedro de Alcântara,
      Francisco Antônio,
      João Carlos Xavier de Paula, 
      Miguel Rafael Joaquim, 
      José Gonzaga Pascoal Cipriano, 
      Serafim de Bragança e Bourbon''';

  var array = nomes.split(' , ');
  for (int i = 0; i < array.length; i++) {
    print(array[i]);
  }
  print(array.length);
}
