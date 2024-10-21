import 'package:demo_app/ui6_screen.dart';
import 'package:flutter/material.dart';

class Ui5Screen extends StatefulWidget {
  const Ui5Screen({
    super.key,
  });

  @override
  State<Ui5Screen> createState() => _Ui5ScreenState();
}

class _Ui5ScreenState extends State<Ui5Screen> {
  @override
  List<String> image = [
    'assets/shirt1.jpeg',
    'assets/shirt2.jpeg',
    'assets/shirt3.jpeg',
    'assets/download__1.png',
    'assets/shirt4.jpeg',
    'assets/shirt1.jpeg',
    'assets/shirt2.jpeg',
    'assets/shirt3.jpeg',
    'assets/download__1.png',
    'assets/shirt4.jpeg',
  ];
  List<String> price = [
    '\$230',
    '\$270',
    '\$280',
    '\$210',
    '\$290',
    '\$230',
    '\$270',
    '\$280',
    '\$210',
    '\$290'
  ];
  List<int> num = [
    1,
    2,
    3,
    4,
    5,
    6,
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: GestureDetector(
                        onTap: () {
                          return Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios)),
                  )),
                ),
                Text('Shopping'),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Icon(Icons.menu)),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: image.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.5),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            width: 160,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, top: 5),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1,
                                                spreadRadius: 1.5)
                                          ]),
                                      child: Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Image.asset(
                                  image[index],
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Text(price[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Ui6Screen(
                                      image: image[index],
                                      price: price[index],
                                    );
                                  }));
                                },
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
