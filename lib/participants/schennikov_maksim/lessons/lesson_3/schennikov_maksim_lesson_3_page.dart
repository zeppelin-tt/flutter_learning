import 'package:flutter/material.dart';

class SchennikovMaksimLesson3Page extends StatefulWidget {
  const SchennikovMaksimLesson3Page({
    Key? key,
  }) : super(key: key);

  @override
  State<SchennikovMaksimLesson3Page> createState() => _SchennikovMaksimLesson3PageState();
}

class _SchennikovMaksimLesson3PageState extends State<SchennikovMaksimLesson3Page> {
  late bool isCircle;

  @override
  void initState() {
    super.initState();
    isCircle = false;
  }

  @override
  Widget build(BuildContext context) {
    print('ping');
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          _NewWidget(
            backgroundColor: Colors.blue,
            isCircle: isCircle,
          ),
          _NewWidget(
            backgroundColor: Colors.red,
            isCircle: isCircle,
          ),
        ],
      ),
    );
  }
}

class _NewWidget extends StatefulWidget {
  final Color backgroundColor;
  final bool isCircle;
  final VoidCallback? onTap;

  const _NewWidget({
    required this.backgroundColor,
    required this.isCircle,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  State<_NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<_NewWidget> {
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _color = _color == Colors.red ?  Colors.blue : Colors.red;
        });
      },
      child: Container(
        height: widget.isCircle ? 300 : 200,
        width: widget.isCircle ? 200 : 300,
        // duration: const Duration(seconds: 1),
        // curve: Curves.bounceInOut,
        decoration: BoxDecoration(
          borderRadius: widget.isCircle ? BorderRadius.circular(200) : BorderRadius.zero,
          color: _color,
        ),
        child: const Center(
          child: Text(
            'Flutter Flutter Flutter',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 30,
              overflow: TextOverflow.fade,
            ),
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
