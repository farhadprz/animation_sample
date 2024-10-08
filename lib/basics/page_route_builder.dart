import 'package:flutter/material.dart';

class PageRouteBuilderDemo extends StatelessWidget {
  const PageRouteBuilderDemo({super.key});

  static const String routeName = 'basics/page_route_builder';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push<void>(
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => const _Page2(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  var tween = Tween(begin: const Offset(0.0, 1.0), end: Offset.zero);
                  var curveTween = CurveTween(curve: Curves.ease);

                  return SlideTransition(
                    position: animation.drive(curveTween).drive(tween),
                    child: child,
                  );
                }),
          ),
          child: const Text('Go!'),
        ),
      ),
    );
  }
}

class _Page2 extends StatelessWidget {
  const _Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
      body: Center(child: Text('Page 2', style: Theme.of(context).textTheme.headlineMedium)),
    );
  }
}
