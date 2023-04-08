import 'package:flutter/material.dart';
import 'package:food_ordering_app_getx/resources/res.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  int id = 0;
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        leadingWidth: 40,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: SizedBox(
            height: 45,
            width: 350,
            child: TextFormField(
              onTap: () {
                setState(() {
                  isOn = true;
                });
              },
              showCursor: isOn,
              decoration: InputDecoration(
                filled: true,
                contentPadding: const EdgeInsets.all(10),
                fillColor: Colors.grey.shade200,
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.grey),
                hintText: 'Search',
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide:
                      const BorderSide(width: 0, color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide:
                      const BorderSide(width: 0, color: Colors.transparent),
                ),
              ),
            ),
          ),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white12,
        elevation: 0,
        bottomOpacity: 0.0,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: viewCategory
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, bottom: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(
                                (id == viewCategory.indexOf(e)) ? 6 : 0),
                            backgroundColor: MaterialStateProperty.all(
                                (id == viewCategory.indexOf(e))
                                    ? Colors.red
                                    : Colors.grey.shade200),
                          ),
                          onPressed: () {
                            setState(() {
                              id = viewCategory.indexOf(e);
                              isOn = false;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.all((e['id'] == 1) ? 7 : 13.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  foregroundColor:
                                      (id == viewCategory.indexOf(e))
                                          ? Colors.grey.shade50
                                          : Colors.amber.shade300,
                                  backgroundColor:
                                      (id == viewCategory.indexOf(e))
                                          ? Colors.amber.shade200
                                          : Colors.grey.shade300,
                                  child: Center(
                                    child: Text(
                                      e['img'],
                                      style: const TextStyle(fontSize: 20),
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
                                      color: (id == viewCategory.indexOf(e))
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
          Expanded(
            flex: 20,
            child: (id == 0)
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GridView.builder(
                      itemCount: AllProducts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 5 / 9,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              crossAxisCount: 2),
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  offset: const Offset(1, 2),
                                  blurRadius: 20,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(
                                40,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 150,
                                  width: 200,
                                  child: Image.asset(
                                    AllProducts[i].image,
                                    semanticLabel: AllProducts[i].name,
                                  ),
                                ),
                                Text(
                                  AllProducts[i].name,
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
                                  AllProducts[i].category,
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        '℈',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red.shade500,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      AllProducts[i].price.toString(),
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Colors.red.shade500,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Order Now',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : ListView.builder(
                    itemCount: AllProducts.length,
                    padding: EdgeInsets.all(20),
                    itemBuilder: (context, i) {
                      return (AllProducts[i].id == id)
                          ? Container(
                              margin: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      offset: Offset(1, 2),
                                      blurRadius: 8)
                                ],
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              height: 120,
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: ListTile(
                                leading: Transform.scale(
                                    scale: 1.6,
                                    child: Image.asset(AllProducts[i].image)),
                                isThreeLine: true,
                                title: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 8.0),
                                  child: Text(
                                    AllProducts[i].name,
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4.0, horizontal: 10),
                                          child: Text(
                                            AllProducts[i].category,
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 2,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        ElevatedButton(
                                          autofocus: false,
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Colors.red.shade500,
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text(
                                            'Order Now',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('⭐️ 5.4'),
                                        Text('🔥 129 kcal'),
                                        Text('⏰ 5-10 min'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : SizedBox();
                    }),
          )
        ],
      ),
    );
  }
}
