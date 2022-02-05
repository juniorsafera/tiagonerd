// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

String _opcaoNivelConhecimento = "--Selecione--";
String dados = "";

class _FormTreinamentosState extends State<FormTreinamentos> {
  static const menuNivel = <String>[
    '--Selecione--',
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

  void _enviarDados(
    String nome,
    String email,
    String telefone,
    String cidadeEstado,   
    String? loja,   
    String nivelConhecimento,
    String? mensagem,
  ) {
    dados = "*Procura Por Treinamentos Presenciais* \n"
        "*Nome:* ${nome} \n"
        "*Email:* ${email} \n"
        "*Telefone:* ${telefone} \n"
        "*Cidade/Estado:* ${cidadeEstado} \n"
        "*Loja/Assistência:* ${loja} \n"
        "*Nível Conhecimento:* ${nivelConhecimento} \n"
        "*Mensagem:* ${mensagem} \n"
         ;

    String texto = Uri.encodeComponent(dados);

    _enviar(texto);

    print(texto);
  }

  void _enviar(String dados) async {
    if (!await launch("https://wa.me/5586994952546?text=${dados}"))
      // ignore: curly_braces_in_flow_control_structures
      throw 'Could not enviar! ';
  }

 void   _validarCampos(){

    if(cNome.text.isEmpty){
      print('digite um nome!');
    } else
    if(cEmail.text.isEmpty){
      print('digite um email!');
    } else
    if(cPhone.text.isEmpty){
      print('digite um telefone!');
    } else
    if(cCidadeEstado.text.isEmpty){
      print('digite a cidade onde mora!');
    } else 
    if(_opcaoNivelConhecimento == "--Selecione--"){
      print('digite seu nível de conhecimento!');
    } else{
          _enviarDados(
                            cNome.text,
                           cEmail.text,
                           cPhone.text,
                            cCidadeEstado.text,
                            cLoja.text,
                            _opcaoNivelConhecimento,
                            cMensagem.text, 
                          );
    }
     
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return SingleChildScrollView(
      // ignore: avoid_unnecessary_containers
      child: Card(
        child: Padding(
          
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10 + MediaQuery.of(context).viewInsets.bottom , // tamanho teclado
          ),
          child: Column(
            children: [
              Text(
                "Treinamento Presencial",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "preencha os dados e receba datas e locais disponíveis*",
                style: TextStyle(fontSize: 12),
              ),
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
                        value: _opcaoNivelConhecimento,
                        hint: const Text("Selecione"),
                        onChanged: (String? newValue) {
                          setState(() {
                            _opcaoNivelConhecimento = newValue!;
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
                                  border: Border.all(color: Colors.grey)),
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
                      onPressed: () => _validarCampos(),
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
