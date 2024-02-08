import 'package:flutter/material.dart';
import 'package:first_project/card.dart';
import 'package:first_project/navbar.dart';
import 'package:first_project/category.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Image.asset(
              'assets/images/hero.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 26),
              child: const Text(
                'Category',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Catogries(),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 26),
              child: const Text(
                'Promo product',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const ProductCard(
              key: Key('product2'),
              title: 'New Sale ! - Discount 70%',
              description: '',
              imagePath: 'assets/images/product-1.jpg',
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 26),
              child: const Text(
                'Popular Products',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            title: 'Product ${index * 2}',
                            description: ' Description ${index * 2}',
                            imagePath: 'assets/images/product-${index * 2}.jpg',
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: ProductCard(
                            title: 'Product ${index * 2 + 1}',
                            description: 'Description ${index * 2 + 1}',
                            imagePath:
                                'assets/images/product-${index * 2 + 1}.jpg',
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
