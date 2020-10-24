void main(List<String> args) {
  var nomes = ' Igor | thuany| celia | rogerio | Bia';

  var array = nomes.split('|');

  for (var i = 0; i < array.length; i++) {
    print('Seja bem vindo(a) ' + array[i]);
  }
}
