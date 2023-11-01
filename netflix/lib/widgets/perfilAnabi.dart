import 'package:flutter/material.dart';
import 'package:netflix/widgets/reproduzir.dart';

class Anabi extends StatefulWidget {
  const Anabi({Key? key}) : super(key: key);

  @override
  State<Anabi> createState() => _AnabiState();
}

class _AnabiState extends State<Anabi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Row(
            children: [
              Image(image: AssetImage('assets/barra/menu.png')),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/barra/logonet.png')),
                ),
              ),
              Image(image: AssetImage('assets/barra/anabi.png')),
            ],
          ),
        ),
        body: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                _buildImageList('MINHA LISTA', [
                  'assets/lista/suits.png',
                  'assets/lista/nine.png',
                  'assets/lista/word.png',
                  'assets/lista/matutando.png',
                  'assets/lista/love.png',
                  'assets/lista/outer.png',
                ]),
                _buildImageList('SÉRIES', [
                  'assets/lista/rick.png',
                  'assets/lista/day.png',
                  'assets/lista/familia.png',
                  'assets/lista/teen.png',
                  'assets/lista/peak.png',
                  'assets/lista/lugares.png',
                ]),
                _buildImageList('EM ALTA', [
                  'assets/lista/sla.png',
                  'assets/lista/got.png',
                  'assets/lista/date.png',
                  'assets/lista/ps.png',
                  'assets/lista/fogo.png',
                  'assets/lista/lupin.png',
                ]),
                _buildImageList('TOP-10 HOJE', [
                  'assets/lista/ginny.png',
                  'assets/lista/one.png',
                  'assets/lista/lupin.png',
                  'assets/lista/lado.png',
                  'assets/lista/vinganca.png',
                  'assets/lista/outer.png',
                ]),
                Align(
                  alignment: Alignment.center,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageList(String title, List<String> imagePaths) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0),
                child: InkWell(
                  onTap: () {
                    if (index == 0 && imagePaths[index] == 'assets/lista/suits.png') {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Reproduzir()));
                    }
                  },
                  child: Image.asset(
                    imagePaths[index],
                    width: 100,
                    height: 100,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
