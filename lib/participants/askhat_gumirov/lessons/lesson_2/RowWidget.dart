import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children:const [
      Icon(Icons.add_circle, size: 50, color: Colors.green,),
      Icon(Icons.add_circle, size: 50, color: Colors.red,),
      Icon(Icons.add_circle, size: 50, color: Colors.blue,),
      Icon(Icons.add_circle, size: 50, color: Colors.yellow,),
      Icon(Icons.add_circle, size: 50, color: Colors.purple,),
    ],);
  }
}
