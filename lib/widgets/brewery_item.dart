import 'package:flutter/material.dart';

import '../screens/brewery_detail_screen.dart';

final _lightColors = [
  Colors.amber.shade300,
  Colors.lightGreen.shade300,
  Colors.lightBlue.shade300,
  Colors.orange.shade300,
  Colors.pinkAccent.shade100,
  Colors.tealAccent.shade100,
  Colors.purple.shade100
];

class BreweryItem extends StatelessWidget {
  final String id;
  final String name;
  final int index;
  BreweryItem(this.id, this.name, this.index);

  @override
  Widget build(BuildContext context) {
    final color = _lightColors[index % _lightColors.length];
    return InkWell(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => BreweryDetailScreen(id))),
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
            color: color),
        child: GridTile(
          child: Wrap(
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
