import 'package:animation_sample/widgets/animated_container_widget.dart';
import 'package:animation_sample/widgets/animated_icon_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isExpanded = false;
  bool _isIconRotated = false;

  void _toggleContainer() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _toggleIcon() {
    setState(() {
      _isIconRotated = !_isIconRotated;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainerWidget(isExpanded: _isExpanded),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleContainer,
              child: Text(_isExpanded ? 'Shrink' : 'Expand'),
            ),
            const SizedBox(height: 40),
            AnimatedIconWidget(isRotated: _isIconRotated),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleIcon,
              child: Text(
                _isIconRotated ? 'Reset' : 'Rotate Icon',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
