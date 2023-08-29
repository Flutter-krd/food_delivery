import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  const AdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: 170,
            decoration: BoxDecoration(
              color: const Color(0xff050505),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Yey, It\'s \n Veggies Day',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // write a text about get veggies day
                          const Text(
                            'Get Free Delivery & Discount up to 30% for all veggies food',
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                            child: const Text(
                              'Order Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ]),
                  ),
                ),
                Image.network(
                  'https://static.vecteezy.com/system/resources/previews/013/527/704/original/vegetable-salad-on-a-transparent-background-free-png.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          );
  }
}