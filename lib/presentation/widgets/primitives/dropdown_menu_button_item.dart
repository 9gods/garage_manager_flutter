import 'package:flutter/material.dart';
import 'package:garage_manager_flutter/presentation/widgets/colors/app_colors.dart';

class DropdownMenuButtonItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const DropdownMenuButtonItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TextButton.icon(
        style: TextButton.styleFrom(backgroundColor: Colors.transparent),
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(
          text,
          style: TextStyle(
            color: AppColors.slate300,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
