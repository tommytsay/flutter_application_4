import 'package:flutter/material.dart';
import 'package:flutter_application_4/itemDesc.dart';
import 'package:flutter_application_4/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter App 4'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final itemList = <Item>[
      Item(
        name: "Zimomo",
        description: "This leader of the Labubu tribe looks a lot like Labubu, with fuzzy hair, long ears, and sharp teeth. But, Zimomo has a spiked tail and Labubu has no tail at all. She also has a rounder face compared to Labubu.",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Zimomo_480x480.png?v=1707518852',
      ),
      Item(
        name: "Tycoco",
        description: "A vegetarian monster who looks like a skeleton, Tycoco is Labubu's love interest. Despite his menacing appearance, he’s actually a shy and gentle monster.",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Tycoco_480x480.png?v=1738307572',
      ),
      Item(
        name: "Mokoko",
        description: "Mokoko’s name means “special,” and she is indeed Labubu’s precious friend. You’d recognize her by her pastel-colored fur.",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Mokoko_480x480.png?v=1738307611',
      ),
      Item(
        name: "Pippo",
        description: "Labubu’s good friend, this freedom-loving elf creature lives in the river. The humorous elf has big ears and enjoys life to the fullest. It also likes wine tasting and a good party!",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Pippo_480x480.png?v=1738307645',
      ),
      Item(
        name: "Spooky",
        description: "Its name may sound scary, but this monster is cute in its own way. It may look like a dumpling because of the folds on the top of its head, but Spooky is actually a snowman! It has a quiet and curious nature and often appears at night under the moonlight.",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Spooky_480x480.png?v=1738307678',
      ),
      Item(
        name: "Pato",
        description: "Pato is a cheerful and friendly creature who loves to swim and play in the water. With his bright colors and playful nature, he brings joy to everyone around him.",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Pato_480x480.png?v=1738307700',
      ),
      Item(
        name: "Puca",
        description: "A monster who looks like a faun, Puca lives in a forest where Labubu likes hanging around.",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Puca_480x480.png?v=1738307753',
      ),
      Item(
        name: "Monster Boy",
        description: "At first, you may think that this creature is a normal boy, but look closely and you’ll see he has horns! His bright blue eyes also turn yellow in different versions.",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Monster_Boy_480x480.png?v=1738307822',
      ),
      Item(
        name: "Vos",
        description: "This monster is Tycoco’s cousin, and also Labubu’s master. He’s an extrovert who loves to drink.",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Vos_480x480.png?v=1738307753',
      ),
      Item(
        name: "Yaya",
        description: "Another lesser-known The Monsters character is Yaya, who has pointed horns and wears a mischievous grin. Yaya loves exploring, even though it has a bad sense of direction.",
        imageUrl: 'https://cdn.shopify.com/s/files/1/0683/0194/7201/files/Yaya_480x480.png?v=1738307753',
      )
      // You can add more items here
    ];
    
    return Scaffold(
      body: SafeArea(
         child: ListView(
          padding: EdgeInsets.all(10),
           children: [for (var i in itemList) ItemWidget(i)],
         ),
      ),
    );
  }
}
