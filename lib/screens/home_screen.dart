import 'package:flutter/material.dart';
import 'package:food_delivery/components/ad_card.dart';
import 'package:food_delivery/components/app_bar.dart';
import 'package:food_delivery/components/category_card.dart';
import 'package:food_delivery/components/product_card.dart';
import 'package:food_delivery/components/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          selectedLabelStyle: const TextStyle(color: Colors.black),
          unselectedLabelStyle: const TextStyle(color: Colors.black54),
          selectedIconTheme: const IconThemeData(color: Colors.black),
          unselectedIconTheme: const IconThemeData(color: Colors.black54),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyAppBar(),
          const AdCard(),
          SearchTextField(searchController: searchController),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.12,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryCard(
                  text: 'Veggies',
                  image:
                      'https://icones.pro/wp-content/uploads/2021/04/icone-de-nourriture-noire-symbole-png.png',
                ),
                CategoryCard(
                  text: 'Fruits',
                  image:
                      'https://icones.pro/wp-content/uploads/2021/04/icone-de-nourriture-noire-symbole-png.png',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Popular foods around you',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              scrollDirection: Axis.horizontal,
              children: const [
                ProductCard(
                  name: 'Burger Cheese',
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvrokSBC21cI9dBTbubiesGewNJ7EOLXTNpg&usqp=CAU',
                  price: '14000 IQD',
                  storeName: 'Burger King',
                  storeImage:
                      'https://static.vecteezy.com/system/resources/previews/003/275/730/original/shopping-bag-store-logo-online-shopping-logo-design-free-vector.jpg',
                ),
                ProductCard(
                  name: 'Double Burger Cheese dfjjsfjsjd',
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvrokSBC21cI9dBTbubiesGewNJ7EOLXTNpg&usqp=CAU',
                  price: '13000 IQD',
                  storeName: 'Burger King 2',
                  storeImage:
                      'https://static.vecteezy.com/system/resources/previews/003/275/730/original/shopping-bag-store-logo-online-shopping-logo-design-free-vector.jpg',
                ),
                ProductCard(
                  name: 'Fruites',
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvrokSBC21cI9dBTbubiesGewNJ7EOLXTNpg&usqp=CAU',
                  price: '25000 IQD',
                  storeName: 'Fruites store',
                  storeImage:
                      'https://static.vecteezy.com/system/resources/previews/003/275/730/original/shopping-bag-store-logo-online-shopping-logo-design-free-vector.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
