import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{

  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  bool escoderSenha = true;

  // true = escode a senha
  // false = mostra a senha

  @override
  Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
      title: const Text('Login'),
      centerTitle: true,
    ),
    body: SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20,),

            const Icon(
              Icons.account_circle,
              size: 100,
            ),

            const SizedBox(height: 20,),

            const Text(
              'Bem-Vindo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 5,),

            const Text(
              'Entre com sua conta para acessar o sistema',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30,),

            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                hintText: 'Digite seu email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder() 
              ),
            ),

            const SizedBox(height: 15,),

            TextField(
              controller: senhaController,
              obscureText: escoderSenha,
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                    escoderSenha = !escoderSenha;
                    });
                  },
                  icon: Icon(
                    escoderSenha
                    ? Icons.visibility
                    : Icons.visibility_off
                  ),
                ) 
              ),
            ),


          ],
      ),
     ),
   );
  }
}