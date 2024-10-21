import 'package:flutter/material.dart';

class Ui3Screen extends StatefulWidget {
  const Ui3Screen({super.key});

  @override
  State<Ui3Screen> createState() => _Ui3Screen();
}

class _Ui3Screen extends State<Ui3Screen> {
  List<String> Names = [
    'your story',
    'linta',
    'taiba',
    'sapna',
    'nazish',
    'husna',
    'romaisa',
    'linta',
    'taiba',
    'sapna',
    'nazish',
    'husna',
    'romaisa'
  ];
  List<String> images = [
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
    'assets/1.jpeg',
  ];
  List<int> likes = [
    200,
    564,
    345,
    789,
    456,
    123,
    654,
    321,
    876,
    234,
    567,
    890,
    345,
  ];

  List<String> commentsnames = [
    'SARAH',
    'ALYANA',
    'REHANA',
    'SLARA',
    'JOSEPH',
    'RIDA',
    'KATI',
    'ALI',
    'ESHA',
    'LOVELY',
    'AMAZING',
    'INCREDIBLE',
    'AWESOME',
  ];

  List<String> comments = [
    'Love',
    'Sweet',
    'Fantastic',
    'Great',
    'Good',
    'Adorable',
    'Well',
    'Nice',
    'Cute',
    'Interesting',
    'Amazing',
    'Incredible',
    'Awesome',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.camera_alt_outlined),
        title: const Text(
          'Instagram',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.send_sharp),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Text(
                    'Stories',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Icon(Icons.play_arrow_rounded),
                  Text('Watch all',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 330,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(images[index]),
                                  ),
                                  index == 0
                                      ? Positioned(
                                          bottom: 0.5,
                                          right: 0,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 15,
                                            ),
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: const Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        )
                                      : const SizedBox(
                                          height: 0,
                                        ),
                                  const SizedBox(height: 10),
                                  Text(' ${Names[index]}'),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                thickness: 1,
                color: Color.fromARGB(255, 165, 165, 165),
              ),
            ),
            Container(
              width: 370,
              height: 500,
              child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                          width: 370,
                          height: 580,
                          color: Color.fromARGB(255, 255, 254, 254),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(images[index]),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(' ${Names[index]}'),
                                  const SizedBox(width: 156),
                                  const Icon(Icons.more_vert),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: Image.asset(
                                    images[index],
                                    width: 400,
                                    height: 400,
                                    fit: BoxFit.cover,
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.comment_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.send_sharp),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Icon(Icons.save),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(' ${likes[index]}'),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Likes',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    ' ${commentsnames[index]}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    ' ${comments[index]},',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                color: Color.fromARGB(255, 165, 165, 165),
                              )
                            ],
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
