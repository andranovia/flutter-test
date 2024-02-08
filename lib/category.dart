import 'package:flutter/material.dart';

class Catogries extends StatelessWidget {
  const Catogries({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade300),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      height: 40,
                      image: AssetImage('assets/images/tshirt.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('Tshirt'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade300),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      height: 40,
                      image: AssetImage('assets/images/jacket.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Jacket'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade300),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      height: 40,
                      image: AssetImage('assets/images/shoes.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Shoes'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade300),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      height: 40,
                      image: AssetImage('assets/images/hoodie.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Hoodie'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 20, right: 18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade300),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      height: 40,
                      image: AssetImage('assets/images/watch.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 18),
                child: Text('Watch'),
              )
            ],
          )
        ],
      ),
    );
  }
}
