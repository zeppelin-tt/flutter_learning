import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetsLesson11Page extends StatelessWidget {
  const AssetsLesson11Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add, color: Colors.yellow, size: 40),
              Icon(Icons.abc, color: Colors.yellow, size: 40),
              Icon(Icons.access_time_filled_sharp, color: Colors.red, size: 40),
              Icon(Icons.access_alarm_outlined, color: Colors.yellow, size: 40),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/img/tago_mago.png',
                width: 200,
              ),
              // CachedNetworkImage(
              //   imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6_BSjpHtHuiD_2LEgJJ6rmab9ElaQWvPTLA&usqp=CAU',
              //   placeholder: (context, url) => const CircularProgressIndicator(),
              //   errorWidget: (context, url, error) => const Icon(Icons.error),
              // ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/icon_calc_as_qr.svg', width: 45, color: Colors.red),
              const SizedBox(width: 15),
              SvgPicture.asset('assets/svg/gear.svg', width: 45, color: Colors.blue)
            ],
          ),
          const Text(
            'Hello World!',
            style: TextStyle(color: Colors.yellow, fontSize: 50),
          )
        ],
      ),
    );
  }
}
