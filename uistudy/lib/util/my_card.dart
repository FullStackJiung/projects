import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String number;
  final String title;
  final color;

  const MyCard(
      {super.key, required this.number, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  '**** 3456',
                ),
                Text(
                  '10/24',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
