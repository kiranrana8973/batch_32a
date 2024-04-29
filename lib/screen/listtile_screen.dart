import 'package:batch_32a/common/listtile_common.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 20; i++) ...{
              if (i % 2 == 0) ...{
                CommonListTile(
                  index: i,
                  imageName: "images_2.jpeg",
                ),
              } else ...{
                CommonListTile(
                  index: i,
                  imageName: "images_1.jpeg",
                ),
              }
            }
          ],
        ),
      ),
    );
  }

  // Widget getTile(int index) {
  //   return ListTile(
  //     leading: const Icon(Icons.abc_outlined),
  //     title: Text('Title ${i + 1}'),
  //     subtitle: const Text('Subtitle'),
  //     trailing: const Icon(Icons.delete),
  //   );
  // }
}
