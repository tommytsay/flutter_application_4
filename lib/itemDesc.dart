import 'package:flutter/material.dart';
import 'package:flutter_application_4/item_desc_widget.dart';
import 'package:flutter_application_4/item_image.dart';
import 'package:flutter_application_4/item_name.dart';

import 'package:flutter_application_4/item.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemName(name: item.name, imageUrl: item.imageUrl),
        ItemDescWidget(description: item.description),
      ],
    );
  }
}
