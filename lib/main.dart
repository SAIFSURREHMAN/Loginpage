import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 15),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1608382881605-168dd21d79ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=471&q=80",
              width: 200,
              height: 150,
            ),
            Text("Welcome Back! You Have Been Missed.",
                style: TextStyle(
                    color: Colors.orange.shade800,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            Container(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'User Name',
                hintText: 'Enter your username here',
                hintStyle: TextStyle(color: Color.fromARGB(255, 243, 207, 3)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 243, 207, 3))),
                labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            Container(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 243, 207, 3))),
                hintText: 'Enter your password here',
                hintStyle: TextStyle(color: Color.fromARGB(255, 243, 207, 3)),
                labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text('Forgot Passwod?',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.grey)),
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange.shade800),
                child: const Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                )),
              ),
            ),
            const Spacer(),
            const Row(
              children: <Widget>[
                Expanded(child: Divider()),
                Text(
                  "Or Continue With",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const Spacer(),
            Row(children: [
              const Spacer(),
              MaterialButton(
                shape:
                    Border.all(color: const Color.fromARGB(202, 247, 161, 32)),
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.call,
                    size: 50,
                    color: Color.fromARGB(255, 243, 207, 3),
                  ),
                ),
              ),
              const Spacer(),
              MaterialButton(
                shape: Border.all(color: Colors.orange),
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.g_mobiledata,
                    size: 50,
                    color: Color.fromARGB(255, 243, 207, 3),
                  ),
                ),
              ),
              const Spacer(),
            ])
          ],
        ),
      ),
    );
  }
}
