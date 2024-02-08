import 'package:flutter/material.dart';
import 'card.dart';

class ProductGridShow extends StatelessWidget {
  ProductGridShow({Key? key}) : super(key: key);


  final List<ProductCard> products = [
    const ProductCard(
      key: Key('product1'),
      title: 'Product 1',
      description: 'Product Description',
      imagePath: 'assets/images/product-1.jpg',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Grid Example'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return products[index];
        },
      ),
    );
  }
}