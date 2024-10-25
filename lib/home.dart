import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri numero = Uri.parse('https://wa.me/553198508713');
    final Uri instagram =
        Uri.parse('https://www.instagram.com/pizzaria_homes/');
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 146, 1, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20), // Adicionado espaço superior

              Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width *
                    0.8, // Ajuste de largura responsiva
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              Container(
                margin: EdgeInsets.only(top: 0, bottom: 30),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Rodízio De Pizza',
                    style: GoogleFonts.gloriaHallelujah(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 35,
                      wordSpacing: 7,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              Container(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () async {
                        launchUrl(numero);
                      },
                      icon: Container(
                        child: Icon(
                          Icons.call,
                          color: Color.fromARGB(204, 20, 153, 49),
                        ),
                      ),
                      label: Text(
                        'WhatsApp',
                        style: TextStyle(
                            color: Color.fromARGB(204, 20, 153, 49),
                            fontStyle: FontStyle.italic,
                            fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () async {
                        launchUrl(instagram);
                      },
                      icon: Image.asset('assets/images/icon.png',
                          width: 30, color: Colors.pink[900]),
                      label: Text(
                        'Instagram',
                        style: TextStyle(
                            color: Colors.pink[800],
                            fontStyle: FontStyle.italic,
                            fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 70), // Espaço entre os botões

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/cardapio');
                    },
                    icon: Container(
                      width: 70,
                      height: 60,
                      child: Icon(Icons.restaurant_menu,
                          color: Color(0xFF800000)), // Ícone do cardápio
                    ),
                    label: Text(
                      'Cardápio',
                      style: TextStyle(color: Color(0xFF800000)),
                    ), // Rótulo do botão
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Borda do botão
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/funcionamento');
                    },
                    icon: Container(
                      width: 50,
                      height: 60,
                      child: Icon(Icons.receipt_long,
                          color:
                              Color(0xFF800000)), // Ícone de Como Funcionamos
                    ),
                    label: Text(
                      'Como\nFunciona',
                      style: TextStyle(color: Color(0xFF800000)),
                    ), // Rótulo do botão
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Borda do botão
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20), // Espaço entre os botões

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/orcamento');
                    },
                    icon: Container(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.payment,
                          color:
                              Color(0xFF800000)), // Ícone de Como Funcionamos
                    ),
                    label: Text(
                      'Orçamento',
                      style: TextStyle(color: Color(0xFF800000)),
                    ), // Rótulo do botão
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Borda do botão
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/fotos');
                    },
                    icon: Container(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.monochrome_photos,
                          color:
                              Color(0xFF800000)), // Ícone de Como Funcionamos
                    ),
                    label: Text(
                      'Fotos de\nEventos',
                      style: TextStyle(color: Color(0xFF800000)),
                    ), // Rótulo do botão
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Borda do botão
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}