import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  const ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Mail ${index + 1}'),
          subtitle: Text('Preview contenuto mail ${index + 1}'),
          onTap: () {
            debugPrint('Mail ${index + 1} aperta|');
          },
        );
      },
      separatorBuilder: (_, __) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Divider(),
      ),
    );
  }
}
