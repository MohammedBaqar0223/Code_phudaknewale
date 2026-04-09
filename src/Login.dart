import 'package:club_verse/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: sans("Clubs Verse", 20.0),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Sansbold("Login", 28.0),
              SizedBox(height: 24.0),

              // Email field
              SizedBox(height: 6.0),
              Textform(one: "Email",
                two: "Enter email",
                mx: 1, width: 350.0,
                controller: passwordController,
                validator: (text){
                  if(text.toString().isEmpty){
                    return "Please enter your Email-ID";
                  }
                },),
              SizedBox(height: 16.0),

              // Password field
              SizedBox(height: 6.0),
             Textform(one: "Password",
                 two: "Enter password",
                 mx: 1, width: 350.0,
                 controller: passwordController,
                 validator: (text){
                   if(text.toString().isEmpty){
                     return "Please enter your password";
                   }
                 },),
              SizedBox(height: 24.0),

              // Login button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent,
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    // handle login
                  },
                  child: Sansbold("Login", 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}