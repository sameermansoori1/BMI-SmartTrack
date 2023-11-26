import 'package:flutter/material.dart';
class MyRactButton extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;
  final String buttonName;
  const MyRactButton({super.key, required this.onPress, required this.buttonName, required this.icon});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 11,vertical: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.primary
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,color: Theme.of(context).colorScheme.primaryContainer
                  ),
              const SizedBox(width: 10,),
              Text(
                  buttonName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.primaryContainer

                  )
              )
            ],
          ),
        ),
    );
  }
}




