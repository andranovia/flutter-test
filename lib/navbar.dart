import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        const SizedBox(width: 60),
        const Icon(Icons.search, color: Colors.black54),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart, color: Colors.black),
          onPressed: () {
            // Implement cart functionality
          },
        ),
        const SizedBox(width: 20),
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
