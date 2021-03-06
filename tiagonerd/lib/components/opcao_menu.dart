import 'package:flutter/material.dart';

class OpcaoMenu extends StatelessWidget {
  final String opcao;
  const OpcaoMenu({Key? key, required this.opcao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width * 0.7;
    String _opcao = "";
    // ignore: unnecessary_null_comparison
    if (opcao != null) {
      _opcao = opcao;
    }
    // ignore: prefer_const_constructors
    return Card(
      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
   ),
      color: const Color(0xFF04EFF9),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
          padding: const EdgeInsets.all(10),
          // ignore: unnecessary_const, sized_box_for_whitespace
          child: Container(
            
            width: largura,
            // ignore: prefer_const_constructors
            child: Center(child: Text(_opcao, style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              
            ),),),
          )),
    );
  }
}
