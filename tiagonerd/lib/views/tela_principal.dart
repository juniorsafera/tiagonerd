import 'package:flutter/material.dart';
import 'package:tiagonerd/components/opcao_menu.dart';


class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;
    return Scaffold(
      body:  
          Container(
              width: larguraTela,
              height: alturaTela,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/bg1.png"), 
              fit: BoxFit.cover)
              ),
               
               // ignore: prefer_const_literals_to_create_immutables
               child:  Column(children: [
                 const SizedBox(height: 80,),
                 // ignore: prefer_const_constructors
                 Image.asset("assets/logo-icon.png"),
                  
                 const SizedBox(height: 80,),
                 const Text('Oque você procura?',
                 style: TextStyle(
                   fontSize: 40
                 ),
                 ),
                 
                 const OpcaoMenu(opcao: "Treinamentos",),
                 const OpcaoMenu(opcao: "Cursos EAD",),
                 const OpcaoMenu(opcao: "Serviços",),
                 

               ],),
            ),
         
       
    );
  }
}