import 'package:flutter/widgets.dart';

class Button extends StatefulWidget {
  final void Function() onTap;
  final String label;

  const Button(this.label, this.onTap, {Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(isPressed ? 0xCCCCCCCC : 0xDDDDDDDD),
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 8,
          ),
          child: Text(widget.label),
        ),
      ),
    );
  }
}
