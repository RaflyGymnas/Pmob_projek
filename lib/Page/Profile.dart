import 'package:flutter/material.dart';
import 'package:projek_pmob/Page/SnK.dart';
import 'package:projek_pmob/Page/bookmark.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                        height: 270,
                        width: 400,
                        child: ClipRRect(
                            child: Image.network(
                          "https://picsum.photos/280/130",
                          fit: BoxFit.cover,
                        ))),
                    Padding(
                      padding: const EdgeInsets.only(top: 220),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            foregroundImage: AssetImage("image/justin.jpeg"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Rafly Gymnastiar',
                                  style: TextStyle(
                                      fontFamily: 'Play-Regular.ttf',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Text(
                                  '@coachjustiin',
                                  style: TextStyle(
                                    fontFamily: 'Play-Regular.ttf',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(50, 10, 40, 5),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontFamily: 'Play-Regular.ttf',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Column(
                                children: [
                                  InkWell(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    bookmark())),
                                        child: Ink(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12),
                                            width: 350,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: ListTile(
                                              leading: Icon(Icons.bookmark),
                                              title: Text(
                                                'Tempat yang anda tandai',
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Play-Regular.ttf',
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              subtitle: Text(
                                                'Tempat yang tertanda',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Play-Regular.ttf',
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )),
                                      ),
                                      InkWell(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SyaratnKetentuan())),
                                        child: Ink(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12),
                                            width: 350,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: ListTile(
                                              leading: Icon(Icons.book),
                                              title: Text(
                                                'Syarat dan Ketentuan',
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Play-Regular.ttf',
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              subtitle: Text(
                                                'Lihat Syarat dan Ketentuan kami',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Play-Regular.ttf',
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )),
                                      ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
