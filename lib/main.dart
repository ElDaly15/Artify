import 'package:coffee_shop/featuers/splash/presentation/views/splash_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  if (!kReleaseMode) {
    runApp(
        DevicePreview(enabled: true, builder: (context) => const ArtifyApp()));
  } else {
    runApp(
        DevicePreview(enabled: false, builder: (context) => const ArtifyApp()));
  }
}

class ArtifyApp extends StatelessWidget {
  const ArtifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
