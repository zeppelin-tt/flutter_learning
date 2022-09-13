import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistrationFormPage extends StatefulWidget {
  const RegistrationFormPage({Key? key}) : super(key: key);

  @override
  State<RegistrationFormPage> createState() => _RegistrationFormPageState();
}

class _RegistrationFormPageState extends State<RegistrationFormPage> {
  final inputFieldSettings1 = TextEditingController();
  final inputFieldSettings2 = TextEditingController();
  final inputFieldSettings3 = TextEditingController();
  final maskPhoneFormatter = MaskTextInputFormatter(mask: '+##(###)###-##-##', filter: {'#': RegExp('[0-9]')});

  @override
  void dispose() {
    inputFieldSettings1.dispose();
    inputFieldSettings2.dispose();
    inputFieldSettings3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffa9a7e3),
          Color(0xff8165f6),
          Color(0xffb42bee),
          Color(0xffb9a9fa),
        ], begin: Alignment.bottomCenter)),
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const SizedBox(height: 100),
              TextField(
                maxLength: 10,
                style: const TextStyle(color: Colors.deepPurpleAccent),
                controller: inputFieldSettings1,
                inputFormatters: [
                  WithoutSpace(),
                ],
                cursorColor: Colors.deepPurpleAccent,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd4d3f1),
                  labelText: 'Nickname',
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                  hintText: 'Enter your nickname',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.deepPurpleAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    borderSide: BorderSide(color: Colors.deepPurpleAccent),
                  ),
                ),
                onChanged: (text) {
                  inputFieldSettings3.text = '${inputFieldSettings1.text} ${inputFieldSettings2.text}';
                },
              ),
              const SizedBox(height: 20),
              TextField(
                style: const TextStyle(color: Colors.deepPurpleAccent),
                controller: inputFieldSettings2,
                inputFormatters: [WithoutSpace(), maskPhoneFormatter],
                cursorColor: Colors.deepPurpleAccent,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd4d3f1),
                  labelText: 'Phone',
                  hintText: 'Enter your phone number',
                  helperStyle: TextStyle(color: Colors.white70, fontSize: 14),
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.deepPurpleAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    borderSide: BorderSide(color: Colors.deepPurpleAccent),
                  ),
                ),
                keyboardType: TextInputType.phone,
                onChanged: (text) {
                  inputFieldSettings3.text = '${inputFieldSettings1.text} ${inputFieldSettings2.text}';
                },
              ),
              const SizedBox(height: 50),
              TextField(
                maxLength: 28,
                style: const TextStyle(color: Colors.deepPurpleAccent),
                controller: inputFieldSettings3,
                inputFormatters: [
                  SpaceProtector(),
                ],
                maxLines: 3,
                cursorColor: Colors.deepPurpleAccent,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color(0xffd4d3f1),
                  labelText: 'Your information',
                  hintText: 'check the information',
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20),
                  prefixIcon: Icon(
                    Icons.accessibility_new,
                    color: Colors.deepPurpleAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    borderSide: BorderSide(color: Colors.deepPurpleAccent),
                  ),
                ),
                onChanged: (text) {
                  inputFieldSettings1.text = textReturner1(text);
                  inputFieldSettings2.text = textReturner2(text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String textReturner1(String text) {
  final spaceArea = text.indexOf(RegExp(r'\s'));
  final infoInField = text.substring(0, spaceArea);
  return infoInField;
}

String textReturner2(String text) {
  final spaceArea = text.indexOf(RegExp(r'\s'));
  final infoInField = text.substring(spaceArea + 1);
  return infoInField;
}

class WithoutSpace extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (RegExp(r'\s').hasMatch(newText)) {
      return oldValue;
    }
    return newValue.copyWith(text: newText);
  }
}

class SpaceProtector extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (RegExp(r'\s').allMatches(newText).length != 1) {
      return oldValue;
    } else {
      return newValue.copyWith(text: newText);
    }
  }
}
