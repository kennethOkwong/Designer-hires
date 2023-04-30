import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(text: 'Bim', style: TextStyle(color: Colors.grey)),
                  TextSpan(text: 'Graph'),
                ],
              ),
            ),
            const Icon(Icons.menu),
          ],
        ),
      ),
    );
  }
}
