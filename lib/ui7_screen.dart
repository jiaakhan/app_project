import 'package:flutter/material.dart';

class Ui7Screen extends StatelessWidget {
  const Ui7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images (3).jpeg',
                  width: 100,
                  height: 100,
                ),
                Container(
                  height: 45,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.grey,
                      )
                    ],
                    color: Colors.white,
                  ),
                  child: Center(
                      child: Text(
                    'Comgratulation My Entire Shop',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 1,
                  childAspectRatio: 1 / 1.5,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 220,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/mobile2.jpeg',
                            width: 300,
                            height: 300,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 45,
                                width: 50,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 235, 151, 145)
                                            .withOpacity(.1),
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.red.withOpacity(0.1),
                                          blurRadius: 1)
                                    ]),
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 45,
                                width: 50,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 235, 151, 145)
                                            .withOpacity(.1),
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.red.withOpacity(0.1),
                                          blurRadius: 1)
                                    ]),
                                child: Icon(
                                  Icons.check,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            height: 45,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 120, top: 8),
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                  size: 30,
                ),
                Icon(
                  Icons.shopping_bag,
                  size: 30,
                ),
                Icon(
                  Icons.directions_run,
                  size: 30,
                ),
                Icon(
                  Icons.person,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
