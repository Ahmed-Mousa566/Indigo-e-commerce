import 'package:flutter/material.dart';

class SearchFailed extends StatelessWidget {
  const SearchFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: const SearchBar(
        leading: Icon(Icons.search),
        hintText: ' Search 50,000+ items, brands...',
        backgroundColor: WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  ),
      ),
    );
  }
}
