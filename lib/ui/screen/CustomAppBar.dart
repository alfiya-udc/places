import 'package:flutter/material.dart';
import 'package:places/theme/textStyles.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final double height;
  final String title;

  const CustomAppBar({
    required this.height,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 64, 16, 16),
        child: Text(
          title,
          style: homeAppbarStyle,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
