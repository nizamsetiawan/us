import 'package:flutter/material.dart';

class ObrolanView extends StatelessWidget {
  const ObrolanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ObrolanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ObrolanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
