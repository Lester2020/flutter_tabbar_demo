import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我的"),
      ),
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: const Text("我的"),
        ),
      ),
    );
  }
}
