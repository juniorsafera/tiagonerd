// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:tiagonerd/others/email.dart';
import 'package:sendgrid_mailer/sendgrid_mailer.dart';
 

class FormTreinamentos extends StatefulWidget {
  const FormTreinamentos({Key? key}) : super(key: key);

  @override
  State<FormTreinamentos> createState() => _FormTreinamentosState();
}

final TextEditingController cNome = TextEditingController();
final TextEditingController cPhone = TextEditingController();
final TextEditingController cEmail = TextEditingController();
final TextEditingController cCidadeEstado = TextEditingController();
final TextEditingController cLoja = TextEditingController();
final TextEditingController cNivelConhecimento = TextEditingController();
final TextEditingController cMensagem = TextEditingController();

// ignore: prefer_const_declarations
final String emailApp = "tiagonerdapp@gmail.com";
// ignore: prefer_const_declarations
final String senhaApp = "107840Tw";
// ignore: prefer_const_declarations
final String emailDestinatario = cEmail.text;

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

  

      String _text = '';
   var email = classEmail( emailApp, senhaApp);
 
  void _enviarEmail() async {
    bool result = await email.sendMensage(
      "Nome: ${cNome.text}  \n"
      "Telefone: ${cPhone.text} \n"
      "Email: ${cEmail.text} \n"
      "Cidade/Estado: ${cCidadeEstado.text} \n"
      "Loja/Assistência: ${cLoja.text} \n"
      "Nível Conhecimento: ${_opcao1} \n"
      "Mensagem: ${cMensagem.text} \n"
      , 
      cEmail.text, 
      'Busca por Treinamento Presencial');

    setState(() {
      _text = result ? 'Enviado.' : 'Não enviado.';
    });
      print(_text);
    
  }
  

/*
  void _enviarEmail() async{
    final mailer = Mailer('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');
  final toAddress = Address('promojrsantos@gmail.com');
  final fromAddress = Address(emailApp);
  final content = Content('text/plain', 'Hello World!');
  final subject = 'Hello Subject!';
  final personalization = Personalization([toAddress]);

  final email =
      Email([personalization], fromAddress, subject, content: [content]);
  mailer.send(email).then((result) {
    // ...
  });
  print("enviarEmail!");
  }
  */

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return SingleChildScrollView(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Card(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "Treinamento Presencial",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text("preencha os dados e receba datas e locais disponíveis*",
                style: TextStyle(
                  fontSize: 12
                ),),
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
                  controller: cPhone,
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
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey)),
                                child: TextField(
                                  maxLines: 3,
                                  decoration: InputDecoration.collapsed(
                                    hintText: " ",
                                    
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
                        color: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: _enviarEmail,
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
