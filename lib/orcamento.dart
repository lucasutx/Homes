import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class orcamento extends StatefulWidget {
  const orcamento({super.key});

  @override
  State<orcamento> createState() => _orcamentoState();
}

class _orcamentoState extends State<orcamento> {
  bool? selecionado = false;

void showResultadoDialogBebida(double calculoFinal) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Valor do Orçamento',
          style: GoogleFonts.gloriaHallelujah(fontSize: 22),
        ),
        content: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.9,
              maxHeight: MediaQuery.of(context).size.height * 0.7,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildInfoBox('Caso queira alguma mudança, fale com o contratante'),
                SizedBox(height: 15),
                buildResumoItem(Icons.done, '${qttd.toStringAsFixed(0)} pizzas à R\$${pizza.toStringAsFixed(2)}'),
                buildResumoItem(Icons.arrow_forward, 'SubTotal: R\$${somapizza.toStringAsFixed(2)}'),
                buildResumoItem(Icons.done, '$garcom garçom(s) para pizzas à R\$150.00'),
                buildResumoItem(Icons.arrow_forward, 'SubTotal: R\$${somaGarcon.toStringAsFixed(2)}'),
                buildResumoItem(Icons.done, '$garcomBebida garçom(s) para bebidas à R\$150.00'),
                buildResumoItem(Icons.arrow_forward, 'SubTotal: R\$${somaGarconBebida.toStringAsFixed(2)}'),
                buildResumoItem(Icons.done, '$pizzaiolo pizzaiolo(s) à R\$150.00'),
                buildResumoItem(Icons.arrow_forward, 'SubTotal: R\$${somaPizaiolo.toStringAsFixed(2)}'),
                buildResumoItem(Icons.done, 'Deslocamento à R\$80.00'),
                buildResumoItem(Icons.done, 'Gás à R\$50.00'),
                SizedBox(height: 20),
                buildTotal(calculoFinal),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('OK', style: TextStyle(color: Colors.green)),
          ),
        ],
      );
    },
  );
}

void showResultadoDialog(double calculoFinal) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Valor do Orçamento',
          style: GoogleFonts.gloriaHallelujah(fontSize: 22),
        ),
        content: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.9,
              maxHeight: MediaQuery.of(context).size.height * 0.7,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildInfoBox('Caso queira alguma mudança, fale com o contratante'),
                SizedBox(height: 10),
                buildResumoItem(Icons.done, '${qttd.toStringAsFixed(0)} pizzas à R\$${pizza.toStringAsFixed(2)}'),
                buildResumoItem(Icons.arrow_forward, 'SubTotal: R\$${somapizza.toStringAsFixed(2)}'),
                buildResumoItem(Icons.done, '$garcom garçom(s) exclusivos para pizzas à R\$150.00'),
                buildResumoItem(Icons.arrow_forward, 'SubTotal: R\$${somaGarcon.toStringAsFixed(2)}'),
                buildResumoItem(Icons.done, '$pizzaiolo pizzaiolo(s) à R\$150.00'),
                buildResumoItem(Icons.arrow_forward, 'SubTotal: R\$${somaPizaiolo.toStringAsFixed(2)}'),
                buildResumoItem(Icons.done, 'Deslocamento à R\$80.00'),
                buildResumoItem(Icons.done, 'Gás à R\$50.00'),
                SizedBox(height: 10),
                buildTotal(calculoFinal),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('OK', style: TextStyle(color: Colors.green)),
          ),
        ],
      );
    },
  );
}

Widget buildResumoItem(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: 20),
        SizedBox(width: 5),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          ),
        ),
      ],
    ),
  );
}

Widget buildInfoBox(String text) {
  return Container(
    padding: EdgeInsets.all(7),
    decoration: BoxDecoration(
      color: Colors.amber[300],
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 10,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.info, color: Colors.white),
        SizedBox(width: 5),
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

Widget buildTotal(double calculoFinal) {
  return Column(
    children: [
      Text(
        'O custo total é de:',
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      Text(
        'R\$ ${calculoFinal.toStringAsFixed(2)}',
        style: TextStyle(fontSize: 23, color: Colors.green, fontWeight: FontWeight.bold),
      ),
    ],
  );
}


  void showInvalidoDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Valor do Orçamento',
            style: GoogleFonts.gloriaHallelujah(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 25,
            ),
          ),
          content: Text(
            'O evento é no mínimo para 30 pessoas',
            style: TextStyle(fontSize: 17),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o diálogo
              },
              child: Text('OK', style: TextStyle(color: Color(0xFF800000))),
            ),
          ],
        );
      },
    );
  }

  int garcom = 0;
  int garcomBebida = 0;
  int pizzaiolo = 0;

  double pizza = 32.9;
  String quantidadePizza = '';
  double qttd = 0;
  double somapizza = 0;
  double somaGarcon = 0;
  double somaGarconBebida = 0;
  double somaPizaiolo = 0;
  void calcula(String convidados) {
    int invites = int.parse(convidados);

    if (selecionado == false) {
      if (invites < 30) {
        return showInvalidoDialog();
      } else if (invites >= 30 && invites <= 45) {
        garcom = 1;
        pizzaiolo = 1;
        garcomBebida = 0;
      } else if (invites >= 46 && invites <= 80) {
        garcom = 2;
        pizzaiolo = 1;
        garcomBebida = 0;
      } else if (invites >= 81 && invites <= 120) {
        garcom = 3;
        pizzaiolo = 2;
        garcomBebida = 0;
      } else if (invites >= 121 && invites <= 160) {
        garcom = 4;
        pizzaiolo = 2;
        garcomBebida = 0;
      } else if (invites >= 161 && invites <= 200) {
        garcom = 5;
        pizzaiolo = 3;
        garcomBebida = 0;
      } else if (invites >= 201 && invites <= 250) {
        garcom = 6;
        pizzaiolo = 3;
        garcomBebida = 0;
      } else if (invites >= 251 && invites <= 300) {
        garcom = 7;
        pizzaiolo = 4;
        garcomBebida = 0;
      }
    } else {
      if (invites < 30) {
        return showInvalidoDialog();
      } else if (invites >= 30 && invites <= 45) {
        garcom = 1;
        pizzaiolo = 1;
        garcomBebida = 1;
      } else if (invites >= 46 && invites <= 80) {
        garcom = 2;
        pizzaiolo = 1;
        garcomBebida = 2;
      } else if (invites >= 81 && invites <= 120) {
        garcom = 3;
        pizzaiolo = 2;
        garcomBebida = 3;
      } else if (invites >= 121 && invites <= 160) {
        garcom = 4;
        pizzaiolo = 2;
        garcomBebida = 4;
      } else if (invites >= 161 && invites <= 200) {
        garcom = 5;
        pizzaiolo = 3;
        garcomBebida = 5;
      } else if (invites >= 201 && invites <= 250) {
        garcom = 6;
        pizzaiolo = 3;
        garcomBebida = 6;
      } else if (invites >= 251 && invites <= 300) {
        garcom = 7;
        pizzaiolo = 4;
        garcomBebida = 7;
      }
    }

    quantidadePizza = (((invites * 7 / 8) - 1).toStringAsFixed(0));

    qttd = double.parse(quantidadePizza);

    somapizza = (qttd * pizza);

    somaGarcon = 150 * garcom.toDouble();
    somaGarconBebida = 150 * garcomBebida.toDouble();
    somaPizaiolo = 150 * pizzaiolo.toDouble();

    double calculoFinal = ((qttd) * pizza) +
        (garcom * 150) +
        (garcomBebida * 150) +
        (pizzaiolo * 150) +
        80 +
        50;

    if (selecionado == false) {
      showResultadoDialog(calculoFinal);
    } else {
      showResultadoDialogBebida(calculoFinal);
    }
  }

  TextEditingController convidados = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: double.infinity,
                color: const Color(0xFF800000),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    'Home´s Pizzaria',
                    style: GoogleFonts.gloriaHallelujah(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  'ORÇAMENTO',
                  style: GoogleFonts.gloriaHallelujah(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(
                        255, 223, 223, 223), // Cor de fundo do TextField
                  ),
                  child: TextField(
                    controller: convidados,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 30.0,
                          vertical: 8.0), // Espaçamento interno
                      labelText: 'Insira o número de convidados',
                      labelStyle:
                          TextStyle(color: Colors.black), // Cor do label
                      border: InputBorder.none, // Remove a borda padrão
                    ),
                    style: TextStyle(color: Colors.black), // Cor do texto
                    cursorColor: const Color(0xFF800000),
                    maxLength: 3,
                    maxLengthEnforcement:
                        MaxLengthEnforcement.none, // Cor do cursor
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Gostaria de Garçom para bebidas?',
                      style: GoogleFonts.robotoCondensed(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: selecionado,
                          activeColor: const Color(0xFF800000),
                          onChanged: (bool? valor) {
                            setState(() {
                              selecionado = valor;
                            });
                          },
                        ),
                        Text(
                          'Sim',
                          style: TextStyle(color: Colors.black),
                        ),
                        Checkbox(
                          value: !selecionado!,
                          activeColor: const Color(0xFF800000),
                          onChanged: (bool? valor) {
                            setState(() {
                              selecionado = !valor!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Não'),
                      ],
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  calcula(convidados.text);
                },
                child: Text(
                  'Calcular',
                  style: TextStyle(color: Colors.white),
                ), // Texto exibido no botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF800000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Borda do botão
                  ),
                ),
              ),
              Container(
                height: 70, // Ajuste a altura conforme necessário
                width: double.infinity,
                color: const Color(0xFF800000),
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
