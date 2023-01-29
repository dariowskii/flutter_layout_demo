import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/widgets/base_button.dart';

class MenuDemo extends StatelessWidget {
  const MenuDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: Platform.isIOS || Platform.isAndroid ? 150 : 100,
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
          child: const SafeArea(
            child: Center(
              child: Text(
                'User',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        _MenuItem(
          title: 'In Arrivo',
          onTap: () {},
          icon: const Icon(
            Icons.mail,
            size: 16,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(),
        ),
        _MenuItem(
          title: 'Inviate',
          onTap: () {},
          icon: const Icon(
            Icons.send,
            size: 16,
          ),
        ),
      ],
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    Key? key,
    required this.title,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: BaseButton(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            const SizedBox(width: 10),
            icon,
          ],
        ),
      ),
    );
  }
}
