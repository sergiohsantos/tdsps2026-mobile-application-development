void main() {
  List<int> numeros = [2, 15, 17, 21, 29, 33, 41, 49];
  List<int> primos = [];
  List<int> naoPrimos = [];

  for (int i = 0; i < numeros.length; i++) {
    int numero = numeros[i];
    bool primo = true;

    // Números menores que 2 não são primos.
    if (numero < 2) {
      primo = false;
    }

    for (int divisor = 2; divisor < numero; divisor++) {
      if (numero % divisor == 0) {
        primo = false;
      }
    }

    if (primo) {
      primos.add(numero);
    } else {
      naoPrimos.add(numero);
    }
  }

  mostrarResultado(primos, naoPrimos);
}

void mostrarResultado(List<int> primos, List<int> naoPrimos) {
  print('Primos (${primos.length}): $primos');
  print('Não primos (${naoPrimos.length}): $naoPrimos');

  if (primos.isEmpty) {
    print('Nenhum número primo encontrado.');
  } else {
    int maior = primos[0];
    for (int i = 1; i < primos.length; i++) {
      if (primos[i] > maior) {
        maior = primos[i];
      }
    }
    print('Maior primo encontrado: $maior');
  }
}
