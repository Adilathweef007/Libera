import 'package:flutter/material.dart';

class AddBook extends StatelessWidget {
  const AddBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MyForm();
  }
}

class MyForm extends StatelessWidget {
  const MyForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text('Libera'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              // decoration: BoxDecoration(bor),
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text('Admin Register'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text('Enter Your ID Number')),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text('Enter Your Name')),
                    ),
                    const SizedBox(height: 20),
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
                          label: const Text('Enter a Password')),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text('Confirm Password')),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Enter'),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
