import 'package:flutter/material.dart';
import 'package:libera_2/home/studenthome/studenthome.dart';
import 'package:libera_2/login/login.dart';
import 'package:libera_2/register/student_register.dart';

class Studentlogin extends StatelessWidget {
  const Studentlogin({super.key});

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
                    const Text('Student Login'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text('Enter Your Admission number')),
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
                                        builder: (ctx) => StudentMain()));
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
                        const Text('Dont  have an account ?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) =>
                                          const StudentRegister()));
                            },
                            child: const Text('Sign Up'))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
