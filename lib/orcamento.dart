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
          title: Text('Valor do Orçamento',
              style: GoogleFonts.gloriaHallelujah(
                fontSize: 25,
              )),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Container(
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
                      Icon(Icons.info,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      Text(
                        ' Caso queria alguma mudança,\n falar com o contratante',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' ${qttd.toStringAsFixed(0)} pizzas à R\$${pizza.toStringAsFixed(2)} pizzas',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.green),
                    Text(' SubTotal: ${somapizza.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' $garcom garçom(s) exclusivos\n para as pizzas à R\$140.00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.green),
                    Text(' SubTotal: ${somaGarcon.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' $garcomBebida garçom(s) exclusivos\n para as bebidas à R\$140.00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.green),
                    Text(' SubTotal: ${somaGarconBebida.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' $pizzaiolo pizzaiolo(s) à R\$140.00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.green),
                    Text(' SubTotal: ${somaPizaiolo.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' Deslocamento à R\$80.00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' Gás à R\$50.00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'O custo total é de: \n      ',
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                Text(
                  'R\$ ${calculoFinal.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 23, color: Colors.green),
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o diálogo
              },
              child: Text(
                'OK',
                style: TextStyle(color: Colors.green),
              ),
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
          title: Text('Valor do Orçamento',
              style: GoogleFonts.gloriaHallelujah(
                fontSize: 25,
              )),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Container(
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
                      Icon(Icons.info,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      Text(
                        ' Caso queria alguma mudança,\n falar com o contratante',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' ${qttd.toStringAsFixed(0)} pizzas à R\$${pizza.toStringAsFixed(2)} pizzas',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.green),
                    Text(' SubTotal: ${somapizza.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' $garcom garçom(s) exclusivos\n para as pizzas à R\$140.00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.green),
                    Text(' SubTotal: ${somaGarcon.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' $pizzaiolo pizzaiolo(s) à R\$140.00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward, color: Colors.green),
                    Text(' SubTotal: ${somaPizaiolo.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' Deslocamento à R\$80.00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    Text(
                      ' Gás à R\$50.00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'O custo total é de: \n      ',
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                Text(
                  'R\$ ${calculoFinal.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 23, color: Colors.green),
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o diálogo
              },
              child: Text('OK', style: TextStyle(color: Colors.green),),
            ),
          ],
        );
      },
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

    somaGarcon = 140 * garcom.toDouble();
    somaGarconBebida = 140 * garcomBebida.toDouble();
    somaPizaiolo = 140 * pizzaiolo.toDouble();

    double calculoFinal = ((qttd) * pizza) +
        (garcom * 140) +
        (garcomBebida * 140) +
        (pizzaiolo * 140) +
        70 + 10 +
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
                        fontSize: 20,
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
