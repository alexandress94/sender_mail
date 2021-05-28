# sender_mail

# Sobre o projeto

- Configuração do SMTP para envio de mensagem por e-mail utilizando Getx como gerenciamento de rotas, gerenciamento de estados e utilizando arquitetura Getx Patterns. 

# Para que serve este projeto?
- Este é um projeto pessoal, para configuração de smtp e envio simples de e-mail com o objetivo de explorar a documentação Getx_Pattern e das dependências Getx e Mail

Getx_pattern:

- <https://github.com/kauemurakami/getx_pattern>

Getx:

- <https://pub.dev/packages/get#:~:text=GetX%20is%20an%20extra-light%20and%20powerful%20solution%20for,resources%20in%20the%20library%3A%20PRODUCTIVITY%2C%20PERFORMANCE%20AND%20ORGANIZATION.>

Mail:
- <https://pub.dev/packages/mailer>

# Configurações necessárias.
Para quem possui interesse em modificar este projeto, será necessário realizar algumas configurações para que o teste básico da aplicação funcione corretamente.
1. Informe o remetente com e-mail e senha nas variaveis LOGIN_EMAIL e PASSWORD.
```
class ConfigSmtp {
  static const LOGIN_EMAIL = '/*E-mail do remetente fica aqui*/';
  static const PASSWORD = '/*Senha do remetente fica aqui*/';
}
```
<https://github.com/alexandress94/sender_mail/blob/master/lib/app/data/common/config_smtp.dart>

2. Preencha os parâmetros da função sendEmail(). Atenção para o parâmetro adressee, precisa conter o destinatário.
```
    await email.sendMessage(
      message: "Menssagem para o destinatário ",
      addressee: "/*E-mail do destinatário fica aqui*/",
      subject: "Assunto do e-mail",
    ); 
```
<https://github.com/alexandress94/sender_mail/blob/master/lib/app/modules/sender/sender_controller.dart>
