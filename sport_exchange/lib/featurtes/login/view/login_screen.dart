import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Страница авторизации')),
      body: Center(
        child: Column(children: [
          const Text('Страница авторизации'),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Введите логин',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Введите пароль',
            ),
          )
        ]),
      ),
    );
  }
}
