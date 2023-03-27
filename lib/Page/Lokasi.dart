import 'package:flutter/material.dart';

class lokasi extends StatelessWidget {
  const lokasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text('Lokasi',
            style: TextStyle(
              fontFamily: "Play.ttf",
              color: Colors.black
            ),),
            bottom: AppBar(
              elevation: 0,
              toolbarHeight: 60,
              backgroundColor: Colors.white,
              title: Center(
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                        )
                        ),
                  ),
                  
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              TabBar(tabs: )
              SizedBox(
                height: 400,
                child: Center(
                  child: Text(
                    'This is an awesome shopping platform',
                  ),
                ),
              ),
              Container(
                height: 1000,
                color: Colors.pink,
              ),
            ]),
          ),
        ],
      ),
    )
    );
  }
}
