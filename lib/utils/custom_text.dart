import 'dart:developer';

import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> key = GlobalKey();

class CustomText extends StatefulWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final bool showDivider;

  const CustomText(
      {Key? key,
      required this.text,
      this.size,
      this.color,
      this.weight,
      this.showDivider = true})
      : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => log('working tap'),
            hoverColor: Colors.transparent,
            onHover: (b) => {
              setState(() {
                isHovering = b;
              }),
            },
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: widget.size ?? 16,
                  color: widget.color ?? Colors.black,
                  fontWeight: widget.weight ?? FontWeight.normal),
            ),
          ),
        ),
        if (widget.showDivider)
          AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            color: isHovering ? Colors.white : Colors.transparent,
            height: 2,
            width: isHovering ? 35 : 0,
          )
      ],
    );
  }
}
