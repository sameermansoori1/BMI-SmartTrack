import 'package:flutter/material.dart';

class SecButton extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;
  const SecButton({super.key, required this.onPress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20)


        ),
        child: Icon(icon),
      ),
    );
  }
}
