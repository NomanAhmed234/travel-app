import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeumorphicSearchField extends StatelessWidget {
  const NeumorphicSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: PrimaryContainer(
        child: TextField(
          onChanged: (value) {},
          style: const TextStyle(fontSize: 16, color: Colors.white),
          textAlignVertical: TextAlignVertical.center,
          controller: TextEditingController(),
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 3),
              border: InputBorder.none,
              filled: false,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: 'Search',
              suffixIcon: Container(
                width: 70,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0XFF5E5E5E),
                      Color(0XFF3E3E3E),
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(Icons.search, color: Color(0xFF222222)),
              ),
              hintStyle: const TextStyle(fontSize: 14, color: Colors.grey)),
        ),
      ),
    );
  }
}

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final Color? color;
  const PrimaryContainer({
    super.key,
    this.radius,
    this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 30),
        boxShadow: [
          BoxShadow(
            color: color ?? const Color(0XFF1E1E1E),
          ),
          const BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            spreadRadius: 0,
            color: Colors.black,
            inset: true,
          ),
        ],
      ),
      child: child,
    );
  }
}
