
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

 class classEmail {
  String  _username = "tiagonerdapp@gmail.com" ;
  // ignore: prefer_typing_uninitialized_variables
  var smtpServer;

  classEmail(String username, String password){
    _username = username;
    // ignore: deprecated_member_use
    smtpServer = gmail("tiagonerdapp@gmail.com", "107840Tw");
  }
  
  //Envia um email para o destinatário, contendo a mensagem com o nome do sorteado
  Future<bool> sendMensage(String mensagem, String destinatario, String assunto) async {

    //Configurar a mensagem
    final message = Message()
      ..from = const Address("tiagonerdapp@gmail.com" )
      ..recipients.add(destinatario)
      ..subject = assunto
      ..text = mensagem;

    try {
      final sendReport = await send(message, smtpServer);
      // ignore: avoid_print
      print('Message sent: ' + sendReport.toString());

      return true;
    } on MailerException catch (e) {
      // ignore: avoid_print
      print('Message not sent.  ${e}');
      for (var p in e.problems) {
        // ignore: avoid_print
        print('Problem: ${p.code}: ${p.msg}');
      }
      return false;
    }
  }
 }