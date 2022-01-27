import 'package:flutter/material.dart';
import 'package:tiagonerd/components/opcao_menu.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: larguraTela,
        height: alturaTela,
         
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/bg1.png"), fit: BoxFit.cover)),

        // ignore: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 140,
                ),
                // ignore: prefer_const_constructors
                Image.asset("assets/logo-icon.png"),
          
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Oque você procura?',
                  style: TextStyle(fontSize: 38),
                ),
                const SizedBox(
                  height: 15,
                ),
          
                const OpcaoMenu(
                  opcao: "Treinamentos",
                ),
                const OpcaoMenu(
                  opcao: "Cursos EAD",
                ),
                const OpcaoMenu(
                  opcao: "Serviços",
                ),
          
               
                

                Container(
                  
                  width: larguraTela,
                   height: 250,
          
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/wave.png"), fit: BoxFit.fitHeight),
                  ),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // ignore: prefer_const_constructors
                        Text("Dúvidas?"),
                        Container(
                          width: 80,
                          height: 80,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/whatsapp-icon.png"), fit: BoxFit.fitHeight),
                  ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Text("YouTube"),
                        Container(
                          width: 80,
                          height: 80,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/youtube-icon.png"), fit: BoxFit.fitHeight),
                  ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Text("Instagram"),
                        Container(
                          width: 80,
                          height: 80,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/instagram-icon.png"), fit: BoxFit.fitHeight),
                  ),
                        ),
                      ],
                    ),


                  ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
