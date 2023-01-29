import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/widgets/base_container.dart';
import 'package:flutter_layout_demo/widgets/base_scaffold.dart';
import 'package:flutter_layout_demo/widgets/list_demo.dart';
import 'package:flutter_layout_demo/widgets/mail_content.dart';
import 'package:flutter_layout_demo/widgets/responsive_menu.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      drawer: const ResponsiveMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  BaseContainer(
                    child: ListDemo(),
                  ),
                  SizedBox(width: 10),
                  BaseContainer(
                    flex: 2,
                    child: MailContent(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
