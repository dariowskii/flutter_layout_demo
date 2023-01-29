import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/widgets/base_button.dart';

class ListDemo extends StatelessWidget {
  const ListDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (_, index) => _SingleMailItem(index: index),
      separatorBuilder: (_, __) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Divider(),
      ),
    );
  }
}

class _SingleMailItem extends StatelessWidget {
  const _SingleMailItem({
    Key? key,
    required this.index,
  })  : assert(index >= 0),
        super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor:
                  Colors.primaries[index % Colors.primaries.length],
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Oggetto Mail ${index + 1}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Testo della mail ${index + 1}'),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
