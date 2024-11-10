import 'package:flutter/material.dart';

enum Products {
  dart(
    title: 'dart',
    description: 'the best object language',
    image: 'assets/images/dart.png',
  ), 
  flutter(
    title: 'flutter',
    description: 'the best mobile widget library',
    image: 'assets/images/flutter.png',
  ),
  firebase(
    title: 'firebase',
    description: 'the best cloud database',
    image: 'assets/images/firebase.png',
  );

  final String title;
  final String description;
  final String image;

  const Products ({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  String toString() => "$title\n$description\n$image";
}
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            ProductCard(
              image: Products.dart.image,
              title: Products.dart.title,
              description: Products.dart.description,
            ),
            SizedBox(height: 10,),
            ProductCard(
              image: Products.flutter.image,
              title: Products.flutter.title,
              description: Products.flutter.description,
            ),
            SizedBox(height: 10,),
            ProductCard(
              image: Products.firebase.image,
              title: Products.firebase.title,
              description: Products.firebase.description,
            ),
          ],
        )
      ),
    )
  ));
}

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(image, width: 80, height: 80, ),
              Text(title, 
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                )),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}