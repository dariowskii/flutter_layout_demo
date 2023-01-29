import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/widgets/base_container.dart';
import 'package:flutter_layout_demo/widgets/base_scaffold.dart';
import 'package:flutter_layout_demo/widgets/list_demo.dart';
import 'package:flutter_layout_demo/widgets/responsive_menu.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      drawer: const ResponsiveMenu(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: const [
              BaseContainer(
                child: ListDemo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
