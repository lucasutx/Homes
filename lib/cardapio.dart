import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cardapio extends StatelessWidget {
  const cardapio({Key? key}) : super(key: key);

  void _showFullScreenImage(BuildContext context, String imageUrl) {
    // Implemente o método para exibir a imagem em tela cheia aqui
  }

  @override
  Widget build(BuildContext context) {
    final List<String> photoUrls = [
      'assets/images/car2.jpg',
      'assets/images/car3.jpg',
      'assets/images/car1.jpg',
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(221, 255, 251, 251),
        body: SafeArea(
          child: Column(
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
              Expanded(
                child: GridView.builder(
                  itemCount: photoUrls.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, // Define quantas fotos por linha
                    crossAxisSpacing: 10.0, // Espaçamento horizontal entre as fotos
                    mainAxisSpacing: 10.0, // Espaçamento vertical entre as fotos
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _showFullScreenImage(context, photoUrls[index]);
                      },
                      child: Image.asset(
                        photoUrls[index],
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  },
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
