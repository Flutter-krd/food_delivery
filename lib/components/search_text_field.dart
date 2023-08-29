import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.searchController});
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Search Food, drink, resturant',
          prefixIcon: const Icon(Icons.search, color: const Color(0xff050505)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff050505), width: 2),
            borderRadius: BorderRadius.circular(24),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff050505), width: 2),
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
}
