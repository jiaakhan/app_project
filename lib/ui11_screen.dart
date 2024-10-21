import 'package:flutter/material.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';

class Ui11Screen extends StatefulWidget {
  const Ui11Screen({super.key});

  @override
  State<Ui11Screen> createState() => _Ui11ScreenState();
}

class _Ui11ScreenState extends State<Ui11Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Write a Review',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/1.jpeg')),
                Text(
                  'How was your experience',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'With   ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text: 'Stephen NP',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber))
                ])),
                SizedBox(
                  height: 20,
                ),
                AnimatedRatingStars(
                  initialRating: 3.5,
                  minRating: 0.0,
                  maxRating: 5.0,
                  filledColor: Colors.amber,
                  emptyColor: Colors.grey,
                  filledIcon: Icons.star,
                  halfFilledIcon: Icons.star_half,
                  emptyIcon: Icons.star_border,
                  onChanged: (double rating) {
                    // Handle the rating change here
                    print('Rating: $rating');
                  },
                  displayRatingValue: true,
                  interactiveTooltips: true,
                  customFilledIcon: Icons.star,
                  customHalfFilledIcon: Icons.star_half,
                  customEmptyIcon: Icons.star_border,
                  starSize: 30.0,
                  animationDuration: Duration(milliseconds: 300),
                  animationCurve: Curves.easeInOut,
                  readOnly: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Write a comment',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          'Write 250 words',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    TextField(
                      maxLines: 3,
                      maxLength: 250,
                      decoration: InputDecoration(
                        fillColor: Colors.amber,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.black,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 50,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber),
                      child: Center(
                          child: Text(
                        'Submit Review',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
