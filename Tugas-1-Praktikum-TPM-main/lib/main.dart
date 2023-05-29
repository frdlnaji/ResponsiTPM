import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Center(
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/images/logo.png')),
              ),
            ),
            Padding(

              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 50, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    labelText: '  Email',
                    hintText: 'Enter your email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(

                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    labelText: '  Password',
                    hintText: 'Enter your password'),

              ),
            ),
            SizedBox(height: 20,),

            Container(
              width: double.infinity,
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 15, bottom: 0),
            child :
                SizedBox(

                  height: 40,

                  child :
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,

                    ),
                    onPressed: () {

                    },

                    child: const Text(
                      'Log In',
                      style: TextStyle(color: Colors.white, fontSize: 20,
                      ),
                    ),

                  ),
                )

            ),
            TextButton(
              onPressed: (){

              },
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
            ),

          ],
        ),
      ),
    );
  }
}