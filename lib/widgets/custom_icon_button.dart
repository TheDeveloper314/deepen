import 'package:deepen/constants.dart';
import 'package:flutter/material.dart';

const double kSize = 30;

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData? iconData;
  final double? size;
  const CustomIconButton({super.key, this.onPressed, this.iconData, this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppTheme.surface,
      radius: size ?? kSize,
      child: IconButton(
        onPressed: onPressed ?? () {},
        icon: Icon(iconData ?? Icons.icecream, size: size ?? kSize),
      ),
    );
  }
}
