import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {

  const DrawerItem(
      {Key? key, required this.name, required this.icon, required this.onPressed})
      : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      hoverColor: Theme.of(context).colorScheme.secondary,
      onTap: onPressed,
      child: SizedBox(
        height: 45,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icon, size: 20, color: Colors.white,),
              const SizedBox(width: 40,),
              Text(
                name, style: const TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}












