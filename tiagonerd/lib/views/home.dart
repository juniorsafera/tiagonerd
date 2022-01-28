// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiagonerd/others/responsivo.dart';
import 'package:tiagonerd/views/tela_principal_mobile.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsivo(
      mobile: TelaPrincipalMobile(),
      tablet: TelaPrincipalMobile(),
      desktop: Desktop(),
    );
  }
}


class Desktop extends StatelessWidget {
  const Desktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        
        Center(
         child:const Text( "Não compatível para Desktops!")
        )
      ],
    );
  }
}