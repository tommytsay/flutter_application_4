import 'package:flutter/material.dart';

class ItemDescWidget extends StatelessWidget {
  final String description;
  const ItemDescWidget({
    super.key, required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description', style: TextStyle(color: Colors.black54)),
        SizedBox(width: 20),
        Text(description, style: TextStyle(color: Colors.black, fontSize: 12))
      ],
    );
  }
}
