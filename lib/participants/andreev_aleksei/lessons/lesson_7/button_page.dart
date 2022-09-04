import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/check_pin_code_page.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/pin_code_provider.dart';
import 'package:provider/provider.dart';
import 'block_page.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pinCodeProvider = context.watch<PinCodeProvider>();

    if (pinCodeProvider.keyboardisBlocked) {
      return const BlockPage();
    } else {
      return Material(
          color: Colors.white,
          child: GestureDetector(
            onTap: () {
              pinCodeProvider.rememberPinCode();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const CheckPinCodePage();
              }));
            },
            child: Center(
              child: Container(
                  height: 75,
                  width: 150,
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                      'Сменить пин-код',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          ));
    }
  }
}
