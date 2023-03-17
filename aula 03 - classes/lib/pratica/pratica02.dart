class Estado {
  final String nome;
  final String sigla;
  final Function calcularPIB;
  Estado({required this.nome, required this.sigla, required this.calcularPIB});
}

class Cidade {
  final String nome;
  final Estado estado;
  final Function calcularDensidadeDemografica;
  Cidade(
      {required this.nome,
      required this.estado,
      required this.calcularDensidadeDemografica});
}

void main(List<String> arguments) {

  var cidade1 = Cidade(
      nome: 'Floripa',
      estado: Estado(
          nome: 'Santa catarina',
          sigla: 'SC',
          calcularPIB: (){
            var x = 5;
            print('calculando pib');
            print('${(3232 + 5454) / 590000}');
          }
          ),
      calcularDensidadeDemografica: () {
            var y = 43434343;
            print('calculando densidade');
            print('${50000 / 20000000}');
          }
      );

 print("${cidade1.nome}");
//-----------------------------------------------------------------------------------

  var cidade = Cidade(
      nome: 'Paranavaí',
      estado: Estado(
          nome: 'Paraná',
          sigla: 'PR',
          calcularPIB: () => print('${(3232 + 5454) / 590000}')
          ),
      calcularDensidadeDemografica: () {
            print('calculando densidade');
            print('${50000 / 20000000}');
          }
      );

cidade.calcularDensidadeDemografica();


  /*
  exercício 01 - criar um objeto do tipo Cidade
  com referência anônima na interpolação da função print. 
  Defina mais que um comando para cada FN.
  → criar e entender a sintaxe de uma função anônima
  → entenda quando utilizar ";" e ","

  
  exercício 02 
  - Altere uma das FNs para utilizar Arrow Function
  

  observação:   
  fórmula PIB → (produto + serviço) / habitantes
  Paraná → produto: 1.7, serviço: 1.2 e habitantes 11.08

  fórmula Densidade Demografica →  area / populacao;
  Paranavaí → area = 1202.3, populacao = 88374;
  */
}
