import 'package:auto_ui/components/my_botton.dart';
import 'package:auto_ui/components/square_tile.dart';
import 'package:auto_ui/components/text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editor controler
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(height: 50),
              Text(
                "Bienvenido de nuevo! ¡Te extrañabamos!",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: "Tu correo electronico",
                obscureText: false,
              ),

              //pass textfield

              MyTextField(
                controller: passwordController,
                hintText: "Contraseña",
                obscureText: true,
              ),

              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Olvidaste tu contraseña?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              //boton sign in
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Accede con",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquiredTile(
                      imagePath: "lib/images/google.png"), //image google
                  SizedBox(width: 25),
                  SquiredTile(imagePath: "lib/images/apple.png"),
                ],
              ),
              Text(
                "No estas registrado?",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                "Registrate aqui",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
