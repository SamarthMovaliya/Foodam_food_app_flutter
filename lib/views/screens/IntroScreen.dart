import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int currentpg = 0;
  CarouselController carouselController = CarouselController();

  List viewPage = [
    {
      'Title': 'Order Your Food',
      'image': 'assets/images/IntroScreen/foodOrder-removebg-preview.png',
      'desc': 'Now you can order food any time right from your mobile.',
    },
    {
      'Title': 'Cooking Safe Food',
      'image': 'assets/images/IntroScreen/kitchen-removebg-preview.png',
      'desc': 'We are maintain safety and We keep clean while making food.',
    },
    {
      'Title': 'Quick delivery',
      'image': 'assets/images/IntroScreen/food recive.png',
      'desc': 'Orders your favourite meals will be immediately deliver',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              //TODO: Getx
              Navigator.of(context).pushReplacementNamed('HomePage');
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 12,
            child: Center(
              child: CarouselSlider(
                  carouselController: carouselController,
                  items: viewPage
                      .map(
                        (e) => Column(
                          children: [
                            const Spacer(),
                            Expanded(
                              flex: 4,
                              child: Transform.scale(
                                scale: (1 == viewPage.indexOf(e)) ? 1.1 : 1.3,
                                child: Hero(
                                  tag: 'screen',
                                  child: Image.asset(
                                    e['image'],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                    e['Title'],
                                    style: const TextStyle(
                                        letterSpacing: 1.1,
                                        wordSpacing: 2,
                                        height: 1.4,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  e['desc'],
                                  style: const TextStyle(
                                      wordSpacing: 2,
                                      height: 1.4,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    height: 800,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: currentpg,
                    enableInfiniteScroll: true,
                    reverse: false,
                    pauseAutoPlayOnManualNavigate: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    onPageChanged: (val, _) async {
                      setState(() {
                        currentpg = val;
                      });
                      if (currentpg == 2) {
                        await Future.delayed(
                          const Duration(seconds: 2),
                          () {
                            return Navigator.pushReplacementNamed(
                                context, 'HomePage');
                          },
                        );
                      }
                    },
                    scrollDirection: Axis.horizontal,
                  )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: viewPage
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              setState(() {
                                carouselController.animateToPage(e,
                                    duration: const Duration(seconds: 0),
                                    curve: Curves.decelerate);
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor:
                                  (currentpg == viewPage.indexOf(e))
                                      ? Colors.amber.shade700
                                      : Colors.grey,
                              radius:
                                  (currentpg == viewPage.indexOf(e)) ? 6 : 3,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (currentpg < 2) {
                        currentpg++;
                      } else {
                        Navigator.pushReplacementNamed(context, 'HomePage');
                      }
                    });
                  },
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber,
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
