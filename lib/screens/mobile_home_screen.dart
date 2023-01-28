import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/widgets/base_scaffold.dart';
import 'package:flutter_layout_demo/widgets/list_demo.dart';
import 'package:flutter_layout_demo/widgets/responsive_menu.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      drawer: const ResponsiveMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const ListDemo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
