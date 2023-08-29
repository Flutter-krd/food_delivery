import 'package:flutter/material.dart';
import 'package:food_delivery/components/product_details_app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ProductDetailsAppBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://www.hauteandhealthyliving.com/wp-content/uploads/2022/06/worcestershire-sauce-burger-recipe-bread-crumbs-11.jpg',
                  // width: double.infinity,
                  // height: MediaQuery.of(context).size.height * 0.58,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: Row(
              children: [
                Image.network(
                  'https://static.vecteezy.com/system/resources/previews/003/275/730/original/shopping-bag-store-logo-online-shopping-logo-design-free-vector.jpg',
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
                const Text('Burger King 2 - 1.5KM'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Double Cheese Burger',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '15000 IQD',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.redAccent),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('clciked');
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      Container(
                        height: 20,
                        width: 1,
                        color: Colors.black38,
                        margin: const EdgeInsets.only(right: 20),
                      ),
                      const Text('1',
                          style:
                              TextStyle(fontSize: 18, color: Colors.redAccent)),
                      Container(
                        height: 20,
                        width: 1,
                        color: Colors.black38,
                        margin: const EdgeInsets.only(left: 20),
                      ),
                      IconButton(
                        onPressed: () {
                          print('clciked');
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Leave a note',
                prefixIcon: const Icon(Icons.edit_document),
                prefixIconColor: Colors.black26,
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black38,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.black26),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.black26),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.black26),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              child: TextButton(
                onPressed: () {
                  print('clciked');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order Item',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        'Total: 15000 IQD',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
