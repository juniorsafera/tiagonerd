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

final String emailApp = "tiagonerdapp@gmail.com";
final String senhaApp = "107840Tw";

String _opcao1 = "Nenhum";

class _FormTreinamentosState extends State<FormTreinamentos> {
  static const menuNivel = <String>[
    'Nenhum',
    'Iniciante',
    'Básico',
    'Avançado',
  ];

  // ignore: prefer_final_fields
  List<DropdownMenuItem<String>> _menuNivel = menuNivel
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

      _enviarDados(
        String nome, 
        String email, 
        String phone, 
        String cidade, 
        String loja, 
        String nivel, 
        String mensagem){

        

      }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return SingleChildScrollView(
      child: Container(
        child: Card(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("Tem interesse em realizar um treinamento presencial?",style: TextStyle(
                  fontSize: 18,
                  
                ),),
                Text("preencha os dados e receba datas e locais disponíveis*"),
                TextField(
                  controller: cNome,
                  //onSubmitted: (_) => _submitForm(),
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person), labelText: 'Nome completo*'),
                ),
                TextField(
                  controller: cEmail,
                  //onSubmitted: (_) => _submitForm(),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.email), labelText: 'Email*'),
                ),
                TextField(
                  controller: cEmail,
                  //onSubmitted: (_) => _submitForm(),
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.phone), labelText: 'Telefone + DDD*'),
                ),
                TextField(
                  controller: cCidadeEstado,
                  //onSubmitted: (_) => _submitForm(),
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.location_city),
                    labelText: 'Cidade/Estado*',
                  ),
                ),
                TextField(
                  controller: cLoja,
                  //onSubmitted: (_) => _submitForm(),
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
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
                          child: const Text(
                            "Nível de Conhecimento:*",
                            style: TextStyle(fontSize: 16),
                          )),
                      // ignore: avoid_unnecessary_containers
                      Expanded(
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

                // ignore: avoid_unnecessary_containers
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Mensagem:",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Expanded(
                              child: TextField(
                                maxLines: 3,
                                decoration: InputDecoration.collapsed(
                                  hintText: " ",
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 3, color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RaisedButton(
                        textColor: Colors.white,
                        color:   Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
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
      ),
    );
  }
}
