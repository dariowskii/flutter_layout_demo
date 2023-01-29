import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/widgets/base_container.dart';
import 'package:flutter_layout_demo/widgets/base_scaffold.dart';
import 'package:flutter_layout_demo/widgets/list_demo.dart';
import 'package:flutter_layout_demo/widgets/mail_content.dart';
import 'package:flutter_layout_demo/widgets/menu_demo.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  BaseContainer(
                    child: Center(
                      child: MenuDemo(),
                    ),
                  ),
                  SizedBox(width: 10),
                  BaseContainer(
                    child: ListDemo(),
                  ),
                  SizedBox(width: 10),
                  BaseContainer(
                    flex: 3,
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
