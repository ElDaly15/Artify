import 'package:coffee_shop/featuers/home/presentation/views/widgets/container_of_top_collection_item.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/list_view_of_header_section.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/main_title_text_rich.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/row_of_top_collections.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: SizedBox(
              height: 10,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: MainTitleTextRich(),
          ),
          SizedBox(
            height: 30,
          ),
          ListViewOfHeaderSelections(),
          SizedBox(
            height: 20,
          ),
          CustomHeader(
            title: 'Top Collection 🔥',
          ),
          SizedBox(
            height: 10,
          ),
          ContainerOfTopCollectionItem(),
          SizedBox(height: 30),
          CustomHeader(
            title: 'Best Artist',
          ),
        ],
      ),
    );
  }
}
