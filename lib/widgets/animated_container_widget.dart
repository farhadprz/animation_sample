import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatelessWidget {
  final bool isExpanded;

  const AnimatedContainerWidget({super.key, required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
      width: isExpanded ? 200 : 100,
      height: isExpanded ? 200 : 100,
      color: isExpanded ? Colors.blue : Colors.red,
      alignment: isExpanded ? Alignment.center : AlignmentDirectional.topCenter,
      child: FlutterLogo(size: isExpanded ? 100 : 50),
    );
  }
}
