import 'package:coffee_shop/featuers/artist/presentation/views/widgets/artist_view_body.dart';
import 'package:flutter/material.dart';

class ArtistView extends StatelessWidget {
  const ArtistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: ArtistViewBody(),
    );
  }
}
