import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class VericalDashes extends StatelessWidget {
  const VericalDashes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04),
      child: const Dash(
        direction: Axis.vertical,
        length: 40,
        dashLength: 6,
        dashThickness: 2,
        dashColor: Colors.grey,
      ),
    );
  }
}
