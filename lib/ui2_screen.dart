import 'dart:math';

import 'package:flutter/material.dart';

class Gridview2 extends StatelessWidget {
  const Gridview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                  itemCount: 500,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      child: Center(child: Text('$index')),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
