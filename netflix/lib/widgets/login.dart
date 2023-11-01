import "package:flutter/material.dart";
import "package:netflix/widgets/cadastro.dart";
import "package:netflix/widgets/home.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Netflix',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset("assets/logo.png"),
              const SizedBox(
                height: 50,
              ),
              Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 50,
              ),             
           
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "E-mail",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),

                child: TextField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 63, 62, 62),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),

              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Senha",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),

                child: TextField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 63, 62, 62),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>Home())
                  );  
                },

                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 63, 62, 62),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

                child: Text(
                  'ENTRAR'
                  ),
                ),

              SizedBox(
                height: 50,
              ),
              

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>Cadastro())
                  );
                },

                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 247, 16, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'CRIAR CONTA'
                ),
              ),
            ],
          ),
        ),       
      ),       
    );    
  }
}
