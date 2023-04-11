import 'package:flutter/material.dart';
import 'package:food_ordering_app_getx/resources/res.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 33,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(
                  Icons.search,
                  size: 18,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
        centerTitle: false,
        title: Row(
          children: [
            const Icon(
              Icons.menu_rounded,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Foodam',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 20,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        pauseAutoPlayOnManualNavigate: true,
                        autoPlay: true,
                        viewportFraction: 0.8,
                        autoPlayInterval: const Duration(seconds: 2),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1000),
                        autoPlayCurve: Curves.fastOutSlowIn,
                      ),
                      items: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 14,
                                  offset: const Offset(2, 3),
                                )
                              ],
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.amber.shade200,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: Text(
                                          'The Fastest in Delivery Food.',
                                          style: TextStyle(
                                            fontSize: 24,
                                            wordSpacing: 2.5,
                                            height: 1.4,
                                            letterSpacing: -0.7,
                                            color: Colors.grey.shade900,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 17.0),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.red),
                                            ),
                                            child: const Text(
                                              'Order Now',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Transform.scale(
                                    scale: 1.7,
                                    child: Image.asset(
                                        'assets/images/IntroScreen/food recive.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 14,
                                  offset: const Offset(2, 3),
                                )
                              ],
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.green.shade100,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: Text(
                                          'The Safest way to Cook Food .',
                                          style: TextStyle(
                                            fontSize: 22,
                                            wordSpacing: 2.5,
                                            height: 1.4,
                                            letterSpacing: -0.7,
                                            color: Colors.grey.shade900,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 17.0),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.red),
                                            ),
                                            child: const Text(
                                              'Order Now',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Transform.scale(
                                    scale: 1.7,
                                    child: Transform.scale(
                                      scale: 0.7,
                                      child: Image.asset(
                                          'assets/images/IntroScreen/kitchen-removebg-preview.png'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 14,
                                  offset: const Offset(2, 3),
                                )
                              ],
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red.shade200,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: Text(
                                          'The Trusted way to order food.',
                                          style: TextStyle(
                                            fontSize: 24,
                                            wordSpacing: 2.5,
                                            height: 1.4,
                                            letterSpacing: -0.7,
                                            color: Colors.grey.shade900,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 17.0),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.red),
                                            ),
                                            child: const Text(
                                              'Order Now',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Transform.scale(
                                    scale: 1.7,
                                    child: Image.asset(
                                        'assets/images/IntroScreen/foodOrder-removebg-preview.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Categories',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 23,
                                color: Colors.grey.shade900,
                              ),
                            ),
                          ),
                        ),
                        Hero(
                          tag: 'category',
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: category
                                  .map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 10, bottom: 10),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          elevation: MaterialStateProperty.all(
                                              (i == category.indexOf(e))
                                                  ? 6
                                                  : 0),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  (i == category.indexOf(e))
                                                      ? Colors.red
                                                      : Colors.grey.shade200),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            i = category.indexOf(e);
                                          });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(13.0),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 18,
                                                foregroundColor:
                                                    (i == category.indexOf(e))
                                                        ? Colors.grey.shade50
                                                        : Colors.amber.shade300,
                                                backgroundColor:
                                                    (i == category.indexOf(e))
                                                        ? Colors.amber.shade200
                                                        : Colors.grey.shade300,
                                                child: Center(
                                                  child: Text(
                                                    e['img'],
                                                    style: const TextStyle(
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                e['name'],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: (i ==
                                                            category.indexOf(e))
                                                        ? Colors.white
                                                        : Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0, right: 30),
                          child: Row(
                            children: [
                              Text(
                                'Popular Now',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey.shade900),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('ViewPage');
                                },
                                child: Text(
                                  'View All ▶️',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.amber.shade500,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: AllProducts.map((e) {
                              int id = i + 1;
                              return (e.id == id)
                                  ? Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 25, bottom: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pushNamed(
                                              'DetailPage',
                                              arguments: e);
                                        },
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.5,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade200,
                                                  offset: const Offset(1, 2),
                                                  blurRadius: 20,
                                                ),
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 150,
                                                width: 200,
                                                child: Hero(
                                                  tag: e.name,
                                                  child: Image.asset(
                                                    e.image,
                                                    semanticLabel: e.name,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                e.name,
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.grey.shade700,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              Text(
                                                e.category,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey.shade500,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Text(
                                                      '℈',
                                                      style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.red.shade500,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    e.price.toString(),
                                                    style: TextStyle(
                                                      fontSize: 32,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color:
                                                          Colors.grey.shade800,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 14,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : const SizedBox(
                                      height: 0,
                                      width: 0,
                                    );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
