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

        // ignore: prefer_const_literals_to_create_immutables
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            Expanded(
              child: Image.asset("assets/logo-icon.png"),
            ),

            const Expanded(
              child: Text(
                'Oque você procura?',
                style: TextStyle(fontSize: 40),
              ),
            ),

            Expanded(
              child: Column(
                children: const [
                  OpcaoMenu(
                    opcao: "Treinamentos",
                  ),
                  OpcaoMenu(
                    opcao: "Cursos EAD",
                  ),
                  OpcaoMenu(
                    opcao: "Serviços",
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
