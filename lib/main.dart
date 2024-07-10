import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}
class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
