import 'package:flutter/material.dart';

class VZCardWithShadow extends StatelessWidget {
  const VZCardWithShadow({
    super.key,
    required this.child,
    this.onClick,
  });

  final Widget child;
  final Function? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick!();
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: null,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(06, 05, 27, 0.12),
              spreadRadius: 0.5,
              blurRadius: 24,
              offset: Offset(0, 1),
            ),
            BoxShadow(
              color: Color.fromRGBO(06, 05, 27, 0.06),
              spreadRadius: 0,
              blurRadius: 6,
              offset: Offset(0, 0.5),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
