import 'package:batch_32a/screen/output_screen.dart';
import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final int index;
  final String imageName;
  const CommonListTile({
    required this.index,
    required this.imageName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/$imageName',
        ),
      ),
      title: Text('Title $index'),
      subtitle: const Text('Subtitle'),
      trailing: const Icon(Icons.delete),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return OutputScreen(
              fullName: 'Title $index',
            );
          }),
        );
      },
    );
  }
}
