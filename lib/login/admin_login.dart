import 'package:flutter/material.dart';
import 'package:libera_2/home/adminhome/adminhome.dart';
import 'package:libera_2/login/login.dart';
import 'package:libera_2/register/admin_register.dart';



class Adminlogin extends StatelessWidget {
  const Adminlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const Text('Libera'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              // decoration: BoxDecoration(bor),
              height: 500,
              child: Column(
                children: [
                  const Text('Admin Login'),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: const Text('Enter Your email')),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: const Text('Enter Password')),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => const AdminMain()));
                            },
                            child: const Text('Sign In')),
                        SizedBox(width: 10),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => const login()));
                            },
                            child: const Text('Back')),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Text('Don/t  have an account ?'),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => const AdminRegister()));
                          },
                          child: const Text('Sign Up'))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}