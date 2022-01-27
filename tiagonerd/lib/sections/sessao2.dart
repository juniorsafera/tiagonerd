// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
class Sessao2 extends StatelessWidget {
  const Sessao2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
          // ignore: prefer_const_constructors
          constraints: BoxConstraints(
            maxHeight: 900,
            minHeight: 700,
          ),
          width: double.infinity,
          height: alturaTela,
          
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              image: const DecorationImage(
           image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)
           ),
           // ignore: avoid_unnecessary_containers
           child: Container(
             child: Column(children: [

               SizedBox(
                  height: alturaTela * 0.1,
                ),

               
               // LOGO
               // ignore: avoid_unnecessary_containers
               Container(
                 // ignore: prefer_const_constructors
                 padding: EdgeInsets.symmetric(vertical: 20),
                child: Image.asset("assets/logo.png"),
               ),

               // TEXT
               Container(
                 padding: const EdgeInsets.all(10),
                 width: larguraTela * 0.8,
                  child: const Text("Professor e técnico especialista em reparos avançados em placas de iPhones.",
                  // ignore: unnecessary_const
                  style: const TextStyle(
                    fontSize: 28
                  ),
                  ),
               ),



               // WAVE COM FOTO
             Expanded(child: Container()),
             Stack(
               overflow: Overflow.visible,
               
               fit: StackFit.loose,
              children: [
                Container(
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/wave.png"), fit: BoxFit.cover)),
                    width: larguraTela,
                    height: 190,
                     
                    ),
                    // FOTO
                    Positioned(
                      
                      bottom: 0,
                      right: 0,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // ignore: sized_box_for_whitespace
                          Container(
                            
                            width: 300,
                                     
                                    child: Image.asset("assets/foto.png",
                    
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                        ],
                      ),
                    )
              ],
             )
           ],
           ),
           ),
          
        ),
      ],
    );
  }
}