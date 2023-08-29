import 'package:flutter/material.dart';
import 'package:food_delivery/screens/product_details.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.name,
      required this.price,
      required this.image,
      required this.storeName,
      required this.storeImage});
  final String name;
  final String price;
  final String image;
  final String storeName;
  final String storeImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProductDetailsScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(right: 20),
        width: MediaQuery.of(context).size.width / 2.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                image,
                height: 160.0,
                width: 140.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              price,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.redAccent),
            ),
            Row(
              children: [
                Image.network(
                  storeImage,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
                Text(storeName),
              ],
            )
          ],
        ),
      ),
    );
  }
}
