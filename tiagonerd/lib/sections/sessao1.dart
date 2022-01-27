// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tiagonerd/components/opcao_menu.dart';

class Sessao1 extends StatelessWidget {
  const Sessao1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;
    return Container(
       
      constraints: BoxConstraints(
        maxHeight: 900,
        minHeight: 700,
      ),
      width: double.infinity,
      height: alturaTela,
      //color: Colors.red,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/bg1.png"), fit: BoxFit.cover)),
       
      child: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: alturaTela * 0.2,
            ),

            // LOGO TOP

            Container(
              child: Image.asset("assets/logo-icon.png"),
            ),
            // TEXT
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Oque você procura?",
                style: TextStyle(fontSize: 38),
              ),
            ),

            // MENU OPÇÕES
            OpcaoMenu(opcao: "Treinamentos"),
            OpcaoMenu(opcao: "Cursos EAD"),
            OpcaoMenu(opcao: "Serviços"),
            // WAVE COM BOTÕES
            Expanded(child: Container()),

            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/wave.png"), fit: BoxFit.cover)),
              width: larguraTela,
              height: 190,
              child: Column(

                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      // WHATSAPP
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text("Dúvidas?", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                              ),
                              )
                              ),
                          Container(
                            width: 60,
                            height: 60,
                             
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/whatsapp-icon.png"),
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                        ],
                      ),

                      // YOUTUBE
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text("YouTube",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                              ),)),
                          Container(
                            width: 60,
                            height: 60,
                             
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/youtube-icon.png"),
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                        ],
                      ),

                      // INSTAGRAM
                      Column(
                        children: [
                          Container(
                             padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text("Instagram", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                              ),)),

                          Container(             
                            width: 60,
                            height: 60,
                            
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/instagram-icon.png"),
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
