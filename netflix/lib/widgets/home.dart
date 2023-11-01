import 'package:flutter/material.dart';
import 'package:netflix/widgets/perfilAnabi.dart';
import 'package:netflix/widgets/perfilBianca.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Row(
            children: [
              Image(image: AssetImage('assets/logo1.png')),
              Expanded(
                child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child:  Image(image: AssetImage('assets/logo.png')),
                  ),
                ),
              Image(image: AssetImage('assets/logod.png'))
            ],
          ),
        ),
        body: Container(
          color: Colors.black,
          //child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70),
                Text(
                  'Quem está assistindo ?',
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                SizedBox(
                  height: 20
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context)=> Anabi()), 
                          );
                      },
                      child: Column(
                      children: [
                        Image(image: AssetImage('assets/img1.png')),
                        SizedBox(height: 20),
                        Text(
                          'Anabi',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )
                      ],
                      ),    
                    ),
                    SizedBox(
                      width: 20
                      ),
                      
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context)=> Bianca()), 
                          );
                      },
                    child: Column(
                      children: [
                        Image(image: AssetImage('assets/img2.png')),
                        SizedBox(height: 10),
                        Text(
                          'Bianca',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )
                      ],
                    ),
                      ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: 132,
                  height: 132,
                  color: Colors.white,
                  child: Center(
                    child: Image(image: AssetImage('assets/icone.png')),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Adicionar Perfil',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                Spacer(),
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
                )
              ],
            ),
          ),
        ),
      ),
      //),
    );
  }
}
