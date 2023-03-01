import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                    child: Image.network("https://picsum.photos/280/130", 
                    fit: BoxFit.cover,)
                  )
                  ),
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
                          children: const [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text('Rafly Gymnastiar',
                              style: TextStyle(
                                fontFamily: 'Play-Regular.ttf',
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ), textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Text('@coachjustiin',
                              style: TextStyle(
                                fontFamily: 'Play-Regular.ttf',
                              ),textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 10, 40, 0),
                              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', maxLines: 3,
                              style: TextStyle(
                                fontFamily: 'Play-Regular.ttf',
                              ),textAlign: TextAlign.center,),
                            ),
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
        )
      ),
    );
  }
}