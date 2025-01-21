import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onpressed;

  const SocialMediaButton({
    Key? key,
    required this.icon,
    required this.onpressed, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onpressed,
    );
  }
}