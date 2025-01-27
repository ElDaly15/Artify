import 'package:coffee_shop/featuers/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

void main() {}

class ArtifyApp extends StatelessWidget {
  const ArtifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingView(),
    );
  }
}
