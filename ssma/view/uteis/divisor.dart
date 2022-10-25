import 'package:flutter/material.dart';

class Divisor extends StatelessWidget {
  const Divisor({Key? key, required this.name, this.color}) : super(key: key);

  final String name;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 15,),
          Row(
            children: [
              Text(name,style: TextStyle(color: color,fontSize: 11.5)),
            ],
          ),
          Divider(
            thickness: 0.4,
            height: 3,
            color: color,
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}
