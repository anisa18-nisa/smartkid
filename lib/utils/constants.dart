// ignore_for_file: non_constant_identifier_names, constant_identifier_names
import 'package:smartkid/core/models/animal_model.dart';
import 'package:smartkid/core/models/itemdata_model.dart';
import 'package:flutter/material.dart';
import 'package:smartkid/pages/fruits/fruits.dart';
import '../core/models/colours_model.dart';
import '../core/models/flower_model.dart';
import '../core/models/planet_model.dart';
import 'package:smartkid/pages/colours/colours.dart';
import 'package:smartkid/pages/body/body_parts.dart';
import 'package:smartkid/pages/planets/planets.dart';
import '../core/models/module.dart';
import 'package:smartkid/utils/assets_path.dart';
import '../pages/animals/animals.dart';
import '../pages/atoz/atoz.dart';

class AppConstants {
  static List<Planet> planets = [
    Planet(
      name: 'Sun',
      svgAsset: AssetsPath.getSolarImage(SolarSystem.sun),
      description: 'Sun is the biggest star in the solar system.',
      backgroundColor: const Color.fromARGB(255, 208, 211, 23),
    ),
    Planet(
      name: 'Mercury',
      svgAsset: AssetsPath.getSolarImage(SolarSystem.mercury),
      description: 'Mercury is the closest planet to the Sun.',
      backgroundColor: const Color.fromARGB(255, 221, 221, 221),
    ),
    Planet(
      name: 'Venus',
      svgAsset: AssetsPath.getSolarImage(SolarSystem.venus),
      description: 'Venus is known for its thick atmosphere.',
      backgroundColor: const Color.fromARGB(255, 240, 193, 95),
    ),
    Planet(
      name: 'Earth',
      svgAsset: AssetsPath.getSolarImage(SolarSystem.earth),
      description: 'Earth is the third planet from the Sun.',
      backgroundColor: const Color.fromARGB(255, 81, 149, 192),
    ),
    Planet(
      name: 'Mars',
      svgAsset: AssetsPath.getSolarImage(SolarSystem.mars),
      description: 'Mars is often called the Red Planet.',
      backgroundColor: const Color.fromARGB(255, 238, 118, 96),
    ),
    Planet(
      name: 'Jupiter',
      svgAsset: AssetsPath.getSolarImage(SolarSystem.jupiter),
      description: 'Jupiter is the largest planet in our solar system.',
      backgroundColor: const Color.fromARGB(255, 204, 164, 122),
    ),
    Planet(
      name: 'Saturn',
      svgAsset: AssetsPath.getSolarImage(SolarSystem.saturn),
      description: 'Saturn is known for its beautiful rings.',
      backgroundColor: const Color.fromARGB(255, 229, 215, 194),
    ),
    Planet(
      name: 'Uranus',
      svgAsset: AssetsPath.getSolarImage(SolarSystem.uranus),
      description: 'Uranus is an ice giant with a unique rotation axis.',
      backgroundColor: const Color.fromARGB(255, 169, 222, 246),
    ),
    Planet(
      name: 'Neptune',
      svgAsset: AssetsPath.getSolarImage(SolarSystem.neptune),
      description: 'Neptune is the farthest planet from the Sun.',
      backgroundColor: const Color.fromARGB(255, 64, 90, 200),
    ),
  ];

  static List<Flower> flowers = [
    Flower(
        name: "Rose",
        resource: AssetsPath.getFlowerImage(Flowers.rose),
        background: Colors.redAccent),
    Flower(
        name: "Sunflower",
        resource: AssetsPath.getFlowerImage(Flowers.sunflower),
        background: Colors.yellowAccent),
    Flower(
        name: "Lily",
        resource: AssetsPath.getFlowerImage(Flowers.lily),
        background: Colors.greenAccent),
    Flower(
        name: "Marigold",
        resource: AssetsPath.getFlowerImage(Flowers.marigold),
        background: Colors.yellow),
    Flower(
        name: "Carnation",
        resource: AssetsPath.getFlowerImage(Flowers.carnation),
        background: Colors.redAccent),
    Flower(
        name: "Daffodil",
        resource: AssetsPath.getFlowerImage(Flowers.daffodil),
        background: Colors.purpleAccent),
    Flower(
        name: "Daisy",
        resource: AssetsPath.getFlowerImage(Flowers.daisy),
        background: Colors.green),
    Flower(
        name: "Poppy",
        resource: AssetsPath.getFlowerImage(Flowers.poppy),
        background: Colors.redAccent),
    Flower(
        name: "Tulip",
        resource: AssetsPath.getFlowerImage(Flowers.tulip),
        background: Colors.pink),
    Flower(
        name: "Lavender",
        resource: AssetsPath.getFlowerImage(Flowers.lavender),
        background: Colors.purple),
    Flower(
        name: "Hibiscus",
        resource: AssetsPath.getFlowerImage(Flowers.hibiscus),
        background: Colors.red),
  ];

  static List<Colours> colours = [
    Colours(
      name: 'Blue',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.blue),
      bgColor: Colors.lightBlueAccent,
      fontColor: Colors.lightBlueAccent,
    ),
    Colours(
      name: 'Yellow',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.yellow),
      bgColor: Colors.yellow.shade600,
      fontColor: Colors.yellow.shade600,
    ),
    Colours(
      name: 'Black',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.black),
      bgColor: Colors.black,
      fontColor: Colors.black,
    ),
    Colours(
      name: 'Green',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.green),
      bgColor: Colors.green,
      fontColor: Colors.green,
    ),
    Colours(
      name: 'Pink',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.pink),
      bgColor: Colors.pink.shade300,
      fontColor: Colors.pink.shade300,
    ),
    Colours(
      name: 'White',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.white),
      bgColor: Colors.grey.shade400,
      fontColor: Colors.grey.shade400,
    ),
    Colours(
      name: 'Red',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.red),
      bgColor: Colors.red,
      fontColor: Colors.red,
    ),
    Colours(
      name: 'Violet',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.violet),
      bgColor: Colors.deepPurple,
      fontColor: Colors.deepPurple,
    ),
    Colours(
      name: 'Brown',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.brown),
      bgColor: const Color(0xFF964B00),
      fontColor: const Color(0xFF964B00),
    ),
    Colours(
      name: 'Orange',
      jpgAsset: AssetsPath.getColoursImage(ColorImages.orange),
      bgColor: Colors.orange,
      fontColor: Colors.orange,
    ),
  ];

  static List<Module> modules = [
    Module(
      name: 'A-Z',
      description: 'Learn A to Z with production and an example',
      thumbnailPath: AssetsPath.getAlphabetImage(Alphabets.alphabets),
      route: MaterialPageRoute(builder: (context) => const AtoZ()),
      backgroundColor: const Color.fromARGB(193, 76, 175, 79),
    ),
    Module(
      name: 'Animals',
      description: 'Learn about animals and their sounds',
      thumbnailPath: AssetsPath.getAnimalImage(Animals.animals),
      route: MaterialPageRoute(builder: (context) => AnimalsPage()),
      backgroundColor: const Color.fromARGB(194, 157, 82, 222),
    ),
    Module(
      name: 'Body Parts',
      description: 'Know about body parts and their pronunciation.',
      thumbnailPath: AssetsPath.getBodyImage(Body.body),
      route: MaterialPageRoute(builder: (context) => const PartsPage()),
      backgroundColor: const Color.fromARGB(157, 251, 0, 0),
    ),
    Module(
        name: "Colors",
        description: "Explore and Learn about the colors",
        thumbnailPath: AssetsPath.getColoursImage(ColorImages.colorsCover),
        route: MaterialPageRoute(builder: (context) => const ColoursPage()),
        backgroundColor: const Color.fromARGB(193, 21, 234, 28)),
    Module(
        name: "Flowers",
        description: "Explore and Learn about the flowers",
        thumbnailPath: AssetsPath.getFlowerImage(Flowers.flowerBanner),
        route: MaterialPageRoute(builder: (context) => const ColoursPage()),
        backgroundColor: const Color.fromARGB(193, 21, 234, 28)),
    Module(
        name: "Fruits & Vegetables",
        description: "Explore and Learn about fruits & Vegetables",
        thumbnailPath: "assets/fruitsVeges/cover.jpg",
        route: MaterialPageRoute(builder: (context) => const ColoursPage()),
        backgroundColor: const Color.fromARGB(193, 21, 234, 28)),
    Module(
      name: 'Solar System',
      description: 'Learn about the solar system',
      thumbnailPath: "assets/images/solar/solar.gif",
      route: MaterialPageRoute(builder: (context) => PlanetsPage()),
      backgroundColor: const Color.fromARGB(193, 226, 221, 70),
    ),
  ];

  static const List<String> candidates = [
    "Eye",
    "Lips",
    "Ankle",
    "Arm",
    "Back",
    "Belly",
    "Cheek",
    "Chest",
    "Chin",
    "Ear",
    "Elbow",
    "Foot",
    "Fingers",
    "Hair",
    "Hips",
    "Knee",
    "Leg",
    "Nail",
    "Neck",
    "Nose",
    "Palm",
    "Shoulder",
    "Stomach",
    "Teeth",
    "Thigh",
    "Thumb",
    "Toe",
    "Tongue",
    "Waist",
    "Wrist"
  ];

  static List<ItemData> alphabetItems = [
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.apple),
      title: 'A',
      description: 'Apple',
      backgroundColor: const Color.fromARGB(115, 171, 171, 171),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.ball),
      title: 'B',
      description: 'Ball',
      backgroundColor: const Color.fromARGB(115, 215, 118, 118),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.cat),
      title: 'C',
      description: 'Cat',
      backgroundColor: const Color.fromARGB(194, 130, 243, 69),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.dog),
      title: 'D',
      description: 'Dog',
      backgroundColor: const Color.fromARGB(115, 215, 199, 118),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.elephant),
      title: 'E',
      description: 'Elephant',
      backgroundColor: const Color.fromARGB(115, 118, 215, 173),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.fish),
      title: 'F',
      description: 'Fish',
      backgroundColor: const Color.fromARGB(115, 150, 118, 215),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.grapes),
      title: 'G',
      backgroundColor: const Color.fromARGB(115, 215, 118, 175),
      description: 'Grapes',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.horse),
      title: 'H',
      backgroundColor: const Color.fromARGB(115, 157, 215, 118),
      description: 'Horse',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.icecream),
      title: 'I',
      backgroundColor: const Color.fromARGB(221, 176, 102, 220),
      description: 'Ice-Cream',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.joker),
      title: 'J',
      description: 'Joker',
      backgroundColor: const Color.fromARGB(208, 112, 181, 206),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.king),
      title: 'K',
      backgroundColor: const Color.fromARGB(115, 171, 215, 118),
      description: 'King',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.lion),
      title: 'L',
      description: 'Lion',
      backgroundColor: const Color.fromARGB(236, 235, 229, 53),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.money),
      title: 'M',
      description: 'Money',
      backgroundColor: const Color.fromARGB(115, 118, 189, 215),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.nest),
      title: 'N',
      description: 'Nest',
      backgroundColor: const Color.fromARGB(115, 118, 215, 121),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.orange),
      title: 'O',
      description: 'Orange',
      backgroundColor: const Color.fromARGB(115, 215, 189, 118),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.parrot),
      title: 'P',
      backgroundColor: const Color.fromARGB(115, 120, 118, 215),
      description: 'Parrot',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.queen),
      title: 'Q',
      backgroundColor: const Color.fromARGB(115, 215, 118, 118),
      description: 'Queen',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.rabbit),
      title: 'R',
      description: 'Rabbit',
      backgroundColor: const Color.fromARGB(174, 134, 218, 191),
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.shoe),
      title: 'S',
      backgroundColor: const Color.fromARGB(170, 156, 216, 145),
      description: 'Shoe',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.table),
      title: 'T',
      backgroundColor: const Color.fromARGB(180, 138, 64, 228),
      description: 'Table',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.umbrella),
      title: 'U',
      backgroundColor: const Color.fromARGB(189, 212, 127, 220),
      description: 'Umbrella',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.van),
      title: 'V',
      backgroundColor: const Color.fromARGB(115, 215, 118, 118),
      description: 'Van',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.window),
      title: 'W',
      backgroundColor: const Color.fromARGB(246, 255, 194, 25),
      description: 'Window',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.xerox),
      title: 'X',
      backgroundColor: const Color.fromARGB(115, 0, 236, 71),
      description: 'Xerox',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.yellow),
      title: 'Y',
      backgroundColor: const Color.fromARGB(115, 9, 255, 230),
      description: 'Yellow',
    ),
    ItemData(
      iconAsset: AssetsPath.getAlphabetImage(Alphabets.zero),
      title: 'Z',
      backgroundColor: const Color.fromARGB(155, 81, 0, 255),
      description: 'Zero',
    ),
  ];

  static List<Animal> animals = [
    Animal(
      name: 'Cat',
      svgAsset: AssetsPath.getAnimalImage(Animals.cat),
      soundAsset: AssetsPath.getAnimalSound(Animals.catSound),
      backgroundColor: const Color.fromARGB(193, 76, 175, 79),
    ),
    Animal(
      name: 'Deer',
      svgAsset: AssetsPath.getAnimalImage(Animals.deer),
      soundAsset: AssetsPath.getAnimalSound(Animals.deerSound),
      backgroundColor: const Color.fromARGB(194, 157, 82, 222),
    ),
    Animal(
      name: 'Bear',
      svgAsset: AssetsPath.getAnimalImage(Animals.bear),
      soundAsset: AssetsPath.getAnimalSound(Animals.bearSound),
      backgroundColor: const Color.fromARGB(193, 76, 207, 222),
    ),
    Animal(
      name: 'Cow',
      svgAsset: AssetsPath.getAnimalImage(Animals.cow),
      soundAsset: AssetsPath.getAnimalSound(Animals.cowSound),
      backgroundColor: const Color.fromARGB(157, 251, 0, 0),
    ),
    Animal(
      name: 'Fox',
      svgAsset: AssetsPath.getAnimalImage(Animals.fox),
      soundAsset: AssetsPath.getAnimalSound(Animals.foxSound),
      backgroundColor: const Color.fromARGB(193, 21, 234, 28),
    ),
    Animal(
      name: 'Giraffe',
      svgAsset: AssetsPath.getAnimalImage(Animals.giraffe),
      soundAsset: AssetsPath.getAnimalSound(Animals.giraffeSound),
      backgroundColor: const Color.fromARGB(193, 226, 221, 70),
    ),
    Animal(
      name: 'Goat',
      svgAsset: AssetsPath.getAnimalImage(Animals.goat),
      soundAsset: AssetsPath.getAnimalSound(Animals.goatSound),
      backgroundColor: const Color.fromARGB(138, 48, 59, 48),
    ),
    Animal(
      name: 'Kangaroo',
      svgAsset: AssetsPath.getAnimalImage(Animals.kangaroo),
      soundAsset: AssetsPath.getAnimalSound(Animals.kangarooSound),
      backgroundColor: const Color.fromARGB(154, 221, 214, 209),
    ),
    Animal(
      name: 'Monkey',
      svgAsset: AssetsPath.getAnimalImage(Animals.monkey),
      soundAsset: AssetsPath.getAnimalSound(Animals.monkeySound),
      backgroundColor: const Color.fromARGB(193, 76, 175, 79),
    ),
    Animal(
      name: 'Pig',
      svgAsset: AssetsPath.getAnimalImage(Animals.pig),
      soundAsset: AssetsPath.getAnimalSound(Animals.pigSound),
      backgroundColor: const Color.fromARGB(151, 40, 137, 248),
    ),
    Animal(
      name: 'Sheep',
      svgAsset: AssetsPath.getAnimalImage(Animals.sheep),
      soundAsset: AssetsPath.getAnimalSound(Animals.sheepSound),
      backgroundColor: const Color.fromARGB(193, 240, 241, 170),
    ),
    Animal(
      name: 'Snake',
      svgAsset: AssetsPath.getAnimalImage(Animals.snake),
      soundAsset: AssetsPath.getAnimalSound(Animals.snakeSound),
      backgroundColor: const Color.fromARGB(193, 125, 176, 127),
    ),
    Animal(
      name: 'Squirrel',
      svgAsset: AssetsPath.getAnimalImage(Animals.squirrel),
      soundAsset: AssetsPath.getAnimalSound(Animals.squirrelSound),
      backgroundColor: const Color.fromARGB(139, 175, 140, 76),
    ),
    Animal(
      name: 'Tiger',
      svgAsset: AssetsPath.getAnimalImage(Animals.tiger),
      soundAsset: AssetsPath.getAnimalSound(Animals.tigerSound),
      backgroundColor: const Color.fromARGB(157, 251, 151, 0),
    ),
    Animal(
      name: 'Zebra',
      svgAsset: AssetsPath.getAnimalImage(Animals.zebra),
      soundAsset: AssetsPath.getAnimalSound(Animals.zebraSound),
      backgroundColor: const Color.fromARGB(193, 187, 74, 178),
    ),
    Animal(
      name: 'Dog',
      svgAsset: AssetsPath.getAnimalImage(Animals.dog),
      soundAsset: AssetsPath.getAnimalSound(Animals.dogSound),
      backgroundColor: const Color.fromARGB(193, 33, 149, 243),
    ),
    Animal(
      name: 'Elephant',
      svgAsset: AssetsPath.getAnimalImage(Animals.elephant),
      soundAsset: AssetsPath.getAnimalSound(Animals.elephantSound),
      backgroundColor: const Color.fromARGB(193, 182, 221, 252),
    ),
    Animal(
      name: 'Horse',
      svgAsset: AssetsPath.getAnimalImage(Animals.horse),
      soundAsset: AssetsPath.getAnimalSound(Animals.horseSound),
      backgroundColor: const Color.fromARGB(98, 243, 201, 33),
    ),
    Animal(
      name: 'Lion',
      svgAsset: AssetsPath.getAnimalImage(Animals.lion),
      soundAsset: AssetsPath.getAnimalSound(Animals.lionSound),
      backgroundColor: const Color.fromARGB(193, 43, 197, 35),
    ),
    Animal(
      name: 'Rabbit',
      svgAsset: AssetsPath.getAnimalImage(Animals.rabbit),
      soundAsset: AssetsPath.getAnimalSound(Animals.rabbitSound),
      backgroundColor: const Color.fromARGB(156, 243, 33, 236),
    ),
  ];

  static List<Fruit> Fruits = [
    Fruit(
      name: 'Apple',
      svgAsset: 'assets/fruitsVeges/apple.svg',
      backgroundColor: Colors.white,
      isfruit: true,
    ),
    Fruit(
      name: 'Banana',
      svgAsset: 'assets/fruitsVeges/banana.svg',
      backgroundColor: Colors.white,
      isfruit: true,
    ),
    Fruit(
      name: 'Carrot',
      svgAsset: 'assets/fruitsVeges/carrot.svg',
      backgroundColor: Colors.white,
      isfruit: false,
    ),
    Fruit(
      name: 'Red Chilli',
      svgAsset: 'assets/fruitsVeges/chilli.svg',
      backgroundColor: Colors.white,
      isfruit: false,
    ),
    Fruit(
      name: 'Eggplant',
      svgAsset: 'assets/fruitsVeges/eggplant.svg',
      backgroundColor: Colors.white,
      isfruit: false,
    ),
    Fruit(
      name: 'Ginger',
      svgAsset: 'assets/fruitsVeges/ginger.svg',
      backgroundColor: Colors.white,
      isfruit: false,
    ),
    Fruit(
      name: 'Grapes',
      svgAsset: 'assets/fruitsVeges/grapes.svg',
      backgroundColor: Colors.white,
      isfruit: true,
    ),
    Fruit(
      name: 'Kiwi',
      svgAsset: 'assets/fruitsVeges/kiwi.svg',
      backgroundColor: Colors.white,
      isfruit: true,
    ),
    Fruit(
      name: 'Okra',
      svgAsset: 'assets/fruitsVeges/okra.svg',
      backgroundColor: Colors.white,
      isfruit: false,
    ),
    Fruit(
      name: 'Onion',
      svgAsset: 'assets/fruitsVeges/onion.svg',
      backgroundColor: Colors.white,
      isfruit: false,
    ),
    Fruit(
      name: 'Orange',
      svgAsset: 'assets/fruitsVeges/orange.svg',
      backgroundColor: Colors.white,
      isfruit: true,
    ),
    Fruit(
      name: 'Pineapple',
      svgAsset: 'assets/fruitsVeges/pineapple.svg',
      backgroundColor: Colors.white,
      isfruit: true,
    ),
    Fruit(
      name: 'potato',
      svgAsset: 'assets/fruitsVeges/potato.svg',
      backgroundColor: Colors.white,
      isfruit: false,
    ),
    Fruit(
      name: 'Strawberry',
      svgAsset: 'assets/fruitsVeges/strawberry.svg',
      backgroundColor: Colors.white,
      isfruit: true,
    ),
    Fruit(
      name: 'tomato',
      svgAsset: 'assets/fruitsVeges/tomato.svg',
      backgroundColor: Colors.white,
      isfruit: false,
    ),
    Fruit(
      name: 'Watermelon',
      svgAsset: 'assets/fruitsVeges/watermelon.svg',
      backgroundColor: Colors.white,
      isfruit: true,
    ),
  ];

  static const String underConstruction =
      'Page Under Construction.\nIt will not take much time.';

  static const String a_z = 'A-Z';
  static const String animal = 'Animals';
  static const String parts = 'Body Parts';
  static const String shape = 'Shapes';
  static const String solar = 'Solar System';
  static const String color = 'Colours';
  static const String flower = 'Flowers';
  static const String fruit = 'Fruits & Vegetables';
  static const String occupation = 'Occupations';
  static const String description =
      'Interactive app to let your kids learn various things like\n\n - A - Z alphabets.\n - Animals and their sounds.\n - Various shapes.\n - Body parts.\n - Solar system.\n';
}
