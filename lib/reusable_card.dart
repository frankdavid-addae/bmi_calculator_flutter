import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.cardColor,
    this.cardChild,
    this.onTap,
  }) : super(key: key);

  final Color? cardColor;
  final Widget? cardChild;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: cardColor,
        ),
        child: cardChild,
      ),
    );
  }
}
