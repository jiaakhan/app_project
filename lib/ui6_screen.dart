import 'package:demo_app/ui7_screen.dart';
import 'package:flutter/material.dart';

class Ui6Screen extends StatefulWidget {
  const Ui6Screen({super.key, this.image, this.price});
  final image;
  final price;

  @override
  State<Ui6Screen> createState() => _Ui6ScreenState();
}

class _Ui6ScreenState extends State<Ui6Screen> {
  int selectedsize = -1;
  void changesize(int tempsized) {
    setState(() {
      selectedsize = tempsized;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<int> number = [30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40];
    List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          return Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios)),
                  ),
                ),
                Text(
                  'Purma',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.menu),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'T-Shirt Top',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          widget.image,
                          fit: BoxFit.cover,
                          height: 200,
                          width: 200,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.price,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 1)
                            ]),
                        child: Center(
                          child: Text(
                            'Size',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Container(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: number.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    changesize(num[index]);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: selectedsize == num[index]
                                                  ? Colors.red
                                                  : Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 1.5)
                                        ]),
                                    child: Center(
                                      child: Text(
                                        number[index].toString(),
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 120, top: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Ui7Screen();
                          }));
                        },
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
