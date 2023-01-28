import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    Key? key,
    required this.body,
    this.drawer,
  }) : super(key: key);

  final Widget body;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FakeMail',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: drawer,
    );
  }
}
