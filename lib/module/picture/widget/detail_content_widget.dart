import 'package:flutter/material.dart';

class DetailContentWidget extends StatelessWidget {
  final String imageUrl;
  final String author;

  const DetailContentWidget({
    required this.imageUrl,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageUrl, fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Taken by: $author', style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
