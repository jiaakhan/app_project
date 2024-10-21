import 'package:flutter/material.dart';

class ListuiScreen extends StatefulWidget {
  const ListuiScreen({super.key});

  @override
  State<ListuiScreen> createState() => _ListuiScreenState();
}

class _ListuiScreenState extends State<ListuiScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> Recipes = [
      'Palak Paneer',
      'Jeera Rice',
      'Butter Nan',
      'Gulabjaman',
      'Palak Paneer',
      'Biryani',
      'Pizza'
    ];
    List<String> Images = [
      'assets/download (3).jpeg',
      'assets/download (5).jpeg',
      'assets/download (6).jpeg',
      'assets/download (7).jpeg',
      'assets/download (3).jpeg',
      'assets/download (4).jpeg',
      'assets/images.jpeg',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('My Recipes'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      Images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      Recipes[index],
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: Recipes.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 40,
              thickness: 3,
            );
          }),
    );
  }
}
