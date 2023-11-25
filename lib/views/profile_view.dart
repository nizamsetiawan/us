import 'package:flutter/material.dart';

class PengaturanView extends StatelessWidget {
  const PengaturanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PengaturanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PengaturanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
