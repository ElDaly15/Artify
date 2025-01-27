import 'package:coffee_shop/featuers/on_boarding/presentation/views/widgets/column_of_container.dart';
import 'package:flutter/material.dart';

class CointaierOfOnboardingDetails extends StatelessWidget {
  const CointaierOfOnboardingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -10,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [
              0.0, // Start from fully transparent
              0.1, // Mid-transparent
              0.3, // Less transparent
              0.8, // Less transparent
              1.0, // Fully opaque
            ],
            colors: [
              Colors.transparent,
              Colors.white.withOpacity(0.2),
              Colors.white,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: const ColumnOfContainer(),
      ),
    );
  }
}
