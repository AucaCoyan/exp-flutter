import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.pink,
        ),
        SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(1)
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.5),
                                offset: Offset(0, 20),
                                blurRadius: 32,
                                spreadRadius: 16)
                          ]),
                          child: Image(
                            image: AssetImage("album3.jpg"),
                            width: 300,
                            height: 300,
                            // width: MediaQuery.of(context).size.width - 100,
                            // height: MediaQuery.of(context).size.height - 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                "Lorem ipsum",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("logo.png"),
                                    width: 48,
                                    height: 48,
                                  ),
                                  Text("Spotify")
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                "1,888,132 likes 5h 3m",
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                color: Colors.black,
                height: 500,
              )
            ]),
          ),
        )
      ]),
    );
  }
}
