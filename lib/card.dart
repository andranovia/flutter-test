import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const ProductCard({
    required this.title,
    required this.description,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: const EdgeInsets.all(16),

      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                description,
                style: const TextStyle(fontSize: 13),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
