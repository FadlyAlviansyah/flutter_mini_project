import 'package:flutter/material.dart';

class ListContentWidget extends StatelessWidget {
  final String imageUrl;
  final String author;

  const ListContentWidget({
    required this.imageUrl,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.network(imageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'by: $author',
                style: TextStyle(fontWeight: FontWeight.bold)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
