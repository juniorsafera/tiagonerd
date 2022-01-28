// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class FormTreinamentos extends StatefulWidget {
  const FormTreinamentos({Key? key}) : super(key: key);

  @override
  State<FormTreinamentos> createState() => _FormTreinamentosState();
}

final TextEditingController cNome = TextEditingController();
final TextEditingController cEmail = TextEditingController();
final TextEditingController cCidadeEstado = TextEditingController();
final TextEditingController cLoja = TextEditingController();
final TextEditingController cNivelConhecimento = TextEditingController();

String _opcao1 = "Nenhum";

class _FormTreinamentosState extends State<FormTreinamentos> {
  static const menuNivel = <String>[
    'Nenhum',
    'Iniciante',
    'Básico',
    'Avançado',
  ];

  List<DropdownMenuItem<String>> _menuNivel = menuNivel
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Card(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: cNome,
                //onSubmitted: (_) => _submitForm(),
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person),
                    labelText: 'Nome completo'),
              ),
              TextField(
                controller: cEmail,
                //onSubmitted: (_) => _submitForm(),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.email),
                    labelText: 'Email'),
              ),
              TextField(
                controller: cCidadeEstado,
                //onSubmitted: (_) => _submitForm(),
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.location_city),
                  labelText: 'Cidade/Estado',
                ),
              ),
              TextField(
                controller: cLoja,
                //onSubmitted: (_) => _submitForm(),
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.home_work_outlined),
                  labelText: 'Loja/Assistência',
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 8),
                      child: const Text("Nível de Conhecimento:",style:TextStyle(
                        fontSize: 16
                      ),)),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: DropdownButton<String>(
                        value: _opcao1,
                        hint: const Text("Selecione"),
                        onChanged: (String? newValue) {
                          setState(() {
                            _opcao1 = newValue!;
                          });
                        },
                        // ignore: unnecessary_this
                        items: this._menuNivel,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(
                      textColor: Colors.white,
                      color: const Color(0xFF04EFF9),
                      onPressed: () {},
                      child: const Text(
                        'Enviar',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
