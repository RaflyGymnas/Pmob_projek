import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:projek_pmob/Page/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/pura.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.only(left: 50, bottom: 200, right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Selamat Datang\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Temukan berbagai informasi seputar tempat wisata di Indonesia.",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/pantai.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.only(left: 50, bottom: 200, right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Bagikan Pengalaman\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Bagikan pengalaman menarik tentang tempat wisata yang telah Anda kunjungi.",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/gunung.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.only(left: 50, bottom: 200, right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Berikan Ulasan\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Berikan ulasan atas informasi yang telah Anda baca.",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
            liquidController: controller,
            onPageChangeCallback: OnPageChangeCallback,
            // slideIconWidget: Icon(Icons.arrow_back_ios),
            // enableSideReveal: true,
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.white70),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: AnimatedSmoothIndicator(
              count: 3,
              activeIndex: controller.currentPage,
              effect: const WormEffect(
                activeDotColor: Color(0xFF5B84D6),
                dotWidth: 10,
                dotHeight: 5,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF5B84D6),
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    "<Mulai>",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Login_page()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  OnPageChangeCallback(int activePageIndex) {
    setState(() {});
  }
}
