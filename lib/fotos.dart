import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class fotos extends StatelessWidget {
  const fotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> photoUrls = [
      'assets/images/01.jpg',
      'assets/images/02.jpg',
      'assets/images/03.jpg',
      'assets/images/04.jpg',
      'assets/images/05.jpg',
      'assets/images/06.jpg',
      'assets/images/07.jpg',
      'assets/images/08.jpg',
      'assets/images/09.jpg',
      'assets/images/10.jpg',
      'assets/images/11.jpg',
      'assets/images/12.jpg',
      'assets/images/13.jpg',
      'assets/images/14.jpg',
      'assets/images/15.jpg',
      'assets/images/16.jpg',
      'assets/images/17.jpg',
      'assets/images/18.jpg',
      'assets/images/20.jpg',
      'assets/images/21.jpg',
      'assets/images/22.jpg',
      
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(221, 230, 230, 230),
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
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _showFullScreenImage(context, photoUrls[index]);
                      },
                      child: Image.asset(
                        photoUrls[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 70,
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

  void _showFullScreenImage(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 1.0, // 90% da largura da tela
            height: MediaQuery.of(context).size.height * 1.0, // 90% da altura da tela
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.contain, // Ajusta a imagem ao contêiner mantendo a proporção
              ),
            ),
          ),
        );
      },
    );
  }
}

