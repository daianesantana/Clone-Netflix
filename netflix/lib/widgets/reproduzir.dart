import 'package:flutter/material.dart';

class Reproduzir extends StatefulWidget {
  const Reproduzir({super.key});

  @override
  State<Reproduzir> createState() => _ReproduzirState();
}

class _ReproduzirState extends State<Reproduzir> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Row(
            children: [
               Image(image: AssetImage('assets/barra/menu.png')),
                 Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage('assets/barra/logonet.png')
                    ),
                  ),
                ),
                Image(image: AssetImage('assets/barra/anabi.png'))
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
              children:[
                Image(image: AssetImage('assets/reproduzir/capaSuits.png')),
                Image(image: AssetImage('assets/reproduzir/frase.png')),
               Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                     ElevatedButton.icon(
                onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Reproduzir()));
                      },
                     icon: Icon(
                       Icons.play_arrow, // Ícone de play (pode ser outro ícone)
                        size: 24,
                        color: Colors.black, // Tamanho do ícone
                      ),
                       label: Text('ASSISTIR',
                       style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), 
                       ),

                style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    ), 
                  ),     
                ],
              ),

              SizedBox(
                height: 50,
              ),
               
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>Reproduzir()));
                },
                 icon: Icon(
                   Icons.arrow_downward, 
                    size: 24,
                    color: const Color.fromARGB(255, 183, 182, 182), 
                  ),
                   label: Text('BAIXAR', 
                   style: TextStyle(color: const Color.fromARGB(255, 204, 204, 204), fontWeight: FontWeight.bold
                   ),
                  ),

                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 144, 142, 142),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ), 
              ),

                SizedBox(
                height: 50,
              ),
                 Center(
                   child: Text(
                    '    Mike Ross (Patrick J. Adams) é um garoto que \n    abandonou a faculdade de direito mas, brilhante\n como é, consegue uma entrevista com o respeitado\n Harvey Specter(Gabriel Macht), um dos melhores\n                  advogados de Manhattan.',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5, 
                    ),
                  ),
                 ),
                       SizedBox(
                height: 50,
              ),
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
     );
  }
}



