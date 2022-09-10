import 'package:flutter/cupertino.dart';

class SquareWithLetterWidget extends StatelessWidget {
  const SquareWithLetterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 112,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xffFB00FF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                'V',
                style: TextStyle(
                  color: Color(0xffF1E0F1),
                  fontSize: 100,
                  fontStyle: FontStyle.normal,
                ),
              ),
            )));
  }
}
