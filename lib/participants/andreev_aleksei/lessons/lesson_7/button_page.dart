import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/check_pin_code_page.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async => false,
      child: Material(
          color: Colors.white,
          child: GestureDetector(
            onTap: () {
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
          )),
    );
  }
}
