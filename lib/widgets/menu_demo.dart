import 'package:flutter/material.dart';

class MenuDemo extends StatelessWidget {
  const MenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: size.width >= 1024
                ? const BorderRadius.vertical(
                    top: Radius.circular(10),
                  )
                : const BorderRadius.only(
                    topRight: Radius.circular(10),
                  ),
          ),
          child: const Center(
            child: Text(
              'User',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: const Text('In arrivo'),
              onTap: () {},
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('Inviate'),
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
