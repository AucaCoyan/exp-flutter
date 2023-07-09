import 'package:flutter/material.dart';

import '../views/album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function onTap;

  const AlbumCard(
      {super.key,
      required this.image,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: insert API GET recently-played
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AlbumView()));
        },
        child: Column(
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
        ));
  }
}
