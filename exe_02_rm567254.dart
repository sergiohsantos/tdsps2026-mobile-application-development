void main() {
  List<double> precos = [25.0, 12.5, 8.0, 40.0];
  List<int> quantidades = [2, 3, 5, 1];

  mostrarTotalBruto(precos, quantidades);
  mostrarTotalComDesconto(precos, quantidades);
}

void mostrarTotalBruto(List<double> precos, List<int> quantidades) {
  double total = 0;
  for (int i = 0; i < precos.length; i++) {
    total += precos[i] * quantidades[i];
  }
  print('Total bruto: R\$ ${total.toStringAsFixed(2)}');
}

void mostrarTotalComDesconto(List<double> precos, List<int> quantidades) {
  double total = 0;
  for (int i = 0; i < precos.length; i++) {
    total += precos[i] * quantidades[i];
  }

  if (total > 100) {
    total -= total * 0.10;
    print('Desconto aplicado: Sim (10%)');
  } else {
    print('Desconto aplicado: Não');
  }
  print('Total a pagar: R\$ ${total.toStringAsFixed(2)}');
}
