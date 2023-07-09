import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;

  const AlbumCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    // TODO: insert API GET recently-played
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10),
        Text(label)
      ],
    );
  }
}
