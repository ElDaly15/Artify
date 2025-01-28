import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class DashesOfContainer extends StatelessWidget {
  const DashesOfContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Dash(
        direction: Axis.horizontal,
        length: MediaQuery.of(context).size.width - 90,
        dashLength: 6,
        dashThickness: 2,
        dashColor: Colors.grey,
      ),
    );
  }
}
