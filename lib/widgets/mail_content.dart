import 'package:flutter/material.dart';

class MailContent extends StatelessWidget {
  const MailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Secret Message',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Rmx1dHRlciBpcyBhd2Vzb21lIQ==',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
