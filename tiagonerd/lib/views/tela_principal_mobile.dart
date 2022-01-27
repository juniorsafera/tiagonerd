import 'package:flutter/material.dart';
import 'package:tiagonerd/sections/sessao1.dart';
import 'package:tiagonerd/sections/sessao2.dart';


class TelaPrincipalMobile extends StatelessWidget {
  const TelaPrincipalMobile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Sessao1(),
            Sessao2(),
          ],
        ),
      ),
    );
  }
}