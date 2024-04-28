import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final int index;
  const CommonListTile({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.abc_outlined),
      title: Text('Title ${index + 1}'),
      subtitle: const Text('Subtitle'),
      trailing: const Icon(Icons.delete),
    );
  }
}
