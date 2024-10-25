import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class funcionamento extends StatefulWidget {
  const funcionamento({Key? key}) : super(key: key);

  @override
  State<funcionamento> createState() => _funcionamentoState();
}

class _funcionamentoState extends State<funcionamento> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(14.0),
                color: const Color(0xFF800000),
                child: Text(
                  'Home´s Pizzaria',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.gloriaHallelujah(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Resumo',
                          style: GoogleFonts.gloriaHallelujah(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF800000),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(0.1),
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 12,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Text(
                              'A HOME´S PIZZARIA LEVA PARA SEU EVENTO TODA A ESTRUTURA PARA REALIZAR UM TRABALHO DE QUALIDADE PARA VOCÊ E SEUS CONVIDADOS.\n\nLEVAMOS AS MASSAS PRÉ-ASSADAS, MONTAMOS E ASSAMOS AS PIZZAS NO LOCAL PARA SER SERVIDAS. \n\n TAMBÉM LEVAMOS TODOS OS INGREDIENTES PARA FAZER TODOS OS SABORES, CONFORME O CÁRDAPIO ',
                              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                            ),
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Text(
                          'Perguntas frequentes',
                          style: GoogleFonts.gloriaHallelujah(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _buildQuestion(
                        'COMO AS PIZZAS SÃO\nSERVIDAS?',
                        'AS PIZZAS SERÃO SERVIDAS EM GUARDANAPOS ESPECIAIS, QUE JÁ ESTÃO INCLUSOS NO ORÇAMENTO.\nPODENDO TAMBÉM SEREM SERVIDAS EM PRATOS EM TALHERES, QUE DEVERAM SER FORNECIDOS PELO CONTRATANTE',
                      ),
                      _buildQuestion(
                        'O QUE LEVAMOS PARA O\nEVENTO?',
                        'LEVAMOS PARA O EVENTO TODO O MATERIAL NECESSÁRIO PARA A REALIZAÇÃO DO MESMO, COMO O FORNO PARA ASSAR, GÁS, GUARDANAPOS, ETC.',
                      ),
                      _buildQuestion(
                        'O QUE OS GARÇONS PODEM\nSERVIR?',
                        'OS GARÇONS SÃO EXCLUSIVOS PARA SERVIR AS PIZZAS. PORÉM, CASO QUEIRA, PODEM SER CONTRATADOS GARÇONS DE BEBIDA A PARTE.',
                      ),
                      _buildQuestion(
                        'SÃO LEVADAS PIZZAS\nRESERVAS?',
                        'SIM, SERÃO LEVADAS 10 PIZZAS A MAIS, PARA A RESERVA. CASO NECESSÁRIO E AUTORIZADO, SERÃO SERVIDAS E SERÁ COBRADO À PARTE 28,90 REAIS CADA. CASO NÃO SEJAM SERVIDAS TODAS AS PIZZAS CONTRATADAS, AS MESMAS SERÃO EMBALADAS E DEIXADAS PARA CONGELAR.',
                      ),
                      _buildQuestion(
                        'QUANTAS HORAS DE EVENTO?',
                        'SÃO 4 HORAS DE EVENTO, A PARTIR DO MOMENTO QUE COMEÇAMOS A SERVIR. ESTÃO INCLUÍDAS TODAS AS PIZZAS DO CARDÁPIO (DOCES E SALGADAS).\n\nCHEGAMOS 1 HORA ANTES PARA PODER ORGANIZAR TODO O NECESSÁRIO PARA O INÍCIO DO EVENTO.',
                      ),
                      _buildQuestion(
                        'QUAIS AS FORMAS\nDE PAGAMENTO?',
                        'O PAGAMENTO DEVE SER REALIZADO APÓS O EVENTO , POR MEIO DO PIX, DINHEIRO OU CARTÃO QUE TEM O ACRÉSCIMO DO JUROS DA MAQUININHA, POR VOLTA DE 4% A MAIS DO VALOR.',
                      ),
                    ],
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

  Widget _buildQuestion(String question, String answer) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_right,
                color: const Color(0xFF800000),
              ),
              SizedBox(width: 10),
              Text(
                question,
                style: GoogleFonts.leagueSpartan(
                  color: const Color(0xFF800000),
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            answer,
            style: GoogleFonts.leagueSpartan(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
