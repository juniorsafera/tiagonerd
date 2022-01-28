// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tiagonerd/components/opcao_menu.dart';
import 'package:tiagonerd/forms/treinamentos.dart';
import 'package:url_launcher/url_launcher.dart';

class Sessao1 extends StatefulWidget {
  const Sessao1({Key? key}) : super(key: key);

  @override
  State<Sessao1> createState() => _Sessao1State();
}

class _Sessao1State extends State<Sessao1> {
  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;

    

    

    void _whatsappLink() async {
      if (!await launch(
          "https://api.whatsapp.com/send?phone=5586994952546&text="))
        // ignore: curly_braces_in_flow_control_structures
        throw 'Could not launch "https://www.instagram.com/tiagonerd_/"';
    }

    void _youtubeLink() async {
      if (!await launch(
          "https://www.youtube.com/channel/UC0N4izsgk0uKnBRtw0tTlOQ"))
        // ignore: curly_braces_in_flow_control_structures
        throw 'Could not launch "https://www.instagram.com/tiagonerd_/"';
    }

    void _instagramLink() async {
      if (!await launch("https://www.instagram.com/tiagonerd_/"))
        // ignore: curly_braces_in_flow_control_structures
        throw 'Could not launch "https://www.instagram.com/tiagonerd_/"';
    }

    
    _abrirFormularioTreinamentos() {
      showModalBottomSheet(
          context: context,
          builder: (_) {
            return FormTreinamentos();
          });
    } 
   

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
            GestureDetector(
              onTap: _abrirFormularioTreinamentos,
              child: OpcaoMenu(opcao: "Treinamentos")
              ),
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

                              Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: Text(
                                "Dúvidas?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            RawMaterialButton(
                              onPressed: _whatsappLink,
                              shape: CircleBorder(),
                              hoverElevation: 25,
                              elevation: 2.0,
                              fillColor: Colors.white,
                              child:  Image.asset("assets/Whatsapp-icon.png", width: 60,height: 60,)
                               
                            )
                          ],
                        ),
                      ),

                      // YOUTUBE
                        Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: Text(
                                "YouTube",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            RawMaterialButton(
                              onPressed: _youtubeLink,
                              shape: CircleBorder(),
                              hoverElevation: 25,
                              elevation: 2.0,
                              fillColor: Colors.white,
                              child:  Image.asset("assets/youtube-icon.png", width: 60,height: 60,)
                               
                            )
                          ],
                        ),
                      ),

                      // INSTAGRAM
                        Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: Text(
                                "Instagram",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            RawMaterialButton(
                              onPressed: _instagramLink,
                              shape: CircleBorder(),
                              hoverElevation: 25,
                              elevation: 2.0,
                              fillColor: Colors.white,
                              child:  Image.asset("assets/instagram-icon.png", width: 60,height: 60,)
                               
                            )
                          ],
                        ),
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
