import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onpressed;

  const SocialMediaButton({
    Key? key,
    required this.iconData,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 219, 217, 217),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: onpressed,
        icon: Icon(
          iconData,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
