import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';
import 'package:spotify_clone/widgets/album_card.dart';
import 'package:spotify_clone/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .5,
        decoration: BoxDecoration(color: Color(0xFf1C7A74)),
      ),
      SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(1.0),
                    Colors.black.withOpacity(1.0),
                  ])),
              constraints: BoxConstraints(),
              child: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recently Played",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Row(
                              children: [
                                Icon(Icons.history),
                                SizedBox(width: 16),
                                Icon(Icons.settings)
                              ],
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              AlbumCard(
                                  image: AssetImage("1.webp"),
                                  label: "Mot6vation Mix",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AlbumView()));
                                  }),
                              SizedBox(width: 16),
                              AlbumCard(
                                image: AssetImage("3.jpg"),
                                label: "Dark Side of the Moon",
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                              ),
                              SizedBox(width: 16),
                              AlbumCard(
                                image: AssetImage("region_global_default.jpg"),
                                label: "Top 50-Global",
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                              ),
                              SizedBox(width: 16),
                              AlbumCard(
                                image: AssetImage("8.webp"),
                                label: "Power Gaming",
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                              ),
                              SizedBox(width: 16),
                              AlbumCard(
                                image: AssetImage("43.jpg"),
                                label: "Best mode",
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                              ),
                            ],
                          )),
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Good evening",
                                style: Theme.of(context).textTheme.titleLarge),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                RowAlbumCard(
                                  label: "Top 50 - Global",
                                  image:
                                      AssetImage("region_global_default.jpg"),
                                ),
                                SizedBox(width: 16),
                                RowAlbumCard(
                                  label: "asdfsd",
                                  image: AssetImage("1.webp"),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                RowAlbumCard(
                                  label: "Top 50 - Global",
                                  image: AssetImage("3.jpg"),
                                ),
                                SizedBox(width: 16),
                                RowAlbumCard(
                                  label: "Album 1",
                                  image: AssetImage("43.jpg"),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                RowAlbumCard(
                                  label: "Tapa disco",
                                  image: AssetImage("67.jpg"),
                                ),
                                SizedBox(width: 16),
                                RowAlbumCard(
                                  label: "Dark Side of ",
                                  image: AssetImage("8.webp"),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Based on your recent listening",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(children: [
                              SongCard(
                                image: AssetImage("3.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("67.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("5.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("1.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("1.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("67.jpg"),
                              ),
                            ]),
                          )
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Recommended radio",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(children: [
                              SongCard(
                                image: AssetImage("1.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("3.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("5.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("8.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("43.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("67.jpg"),
                              ),
                            ]),
                          )
                        ],
                      ),
                      SizedBox(width: 16),
                    ]),
              )))
    ]));
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;

  const RowAlbumCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white10, borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.antiAlias,
        child: Row(children: [
          Image(
            image: image,
            width: 48,
            height: 48,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 8),
          Text(label)
        ]),
      ),
    );
  }
}
