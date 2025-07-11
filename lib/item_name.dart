import 'package:flutter/material.dart';
import 'package:flutter_application_4/item_image.dart';

class ItemName extends StatelessWidget {
  final String name;
  final String imageUrl;
  const ItemName({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name', style: TextStyle(color: Colors.black54)),
        SizedBox(width: 20),
        Row(
          children: [
            ItemImage(imageUrl: imageUrl),
            Text(name, style: TextStyle(color: Colors.pink.shade300, fontSize: 30)),
          ],
        ),
      ],
    );
  }
}
