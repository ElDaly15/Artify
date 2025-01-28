import 'package:coffee_shop/featuers/home/presentation/views/widgets/best_artist_category.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/container_of_top_collection_item.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/list_view_of_header_section.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/main_title_text_rich.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/row_of_top_collections.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: MainTitleTextRich(),
          ),
          const SizedBox(
            height: 30,
          ),
          const ListViewOfHeaderSelections(),
          const SizedBox(
            height: 20,
          ),
          const CustomHeader(
            title: 'Top Collection 🔥',
          ),
          const SizedBox(
            height: 10,
          ),
          const ContainerOfTopCollectionItem(),
          const SizedBox(height: 30),
          const CustomHeader(
            title: 'Best Artist',
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: BestArtistCategory(),
          ),
          const SizedBox(height: 110),
        ],
      ),
    );
  }
}
