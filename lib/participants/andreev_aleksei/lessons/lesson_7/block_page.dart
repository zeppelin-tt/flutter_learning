import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/pin_code_provider.dart';
import 'package:provider/provider.dart';

class BlockPage extends StatelessWidget {
  const BlockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pinCodeProvider = context.watch<PinCodeProvider>();
    pinCodeProvider.isReturningError = true;

    return Material(
      color: Colors.white,
      child: Center(
        child: Container(
            height: 75,
            width: 150,
            alignment: Alignment.center,
            color: Colors.red,
            child: const Center(
              child: Text(
                'Все пропало',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            )),
      ),
    );
  }
}
