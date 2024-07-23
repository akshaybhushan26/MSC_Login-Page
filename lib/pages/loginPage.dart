import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});


  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  void login(){
    setState(() {
      Text("Login Successful");
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Login Page')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Username",
                )   
              ),
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                )   
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: login, child: Text("Login")),
              )
            ],
          ),
        ),
      ),
    );
  }
}