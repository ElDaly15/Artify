import 'package:coffee_shop/featuers/home/data/models/categoryModel.dart';
import 'package:coffee_shop/featuers/home/presentation/views/widgets/container_of_section_header.dart';
import 'package:flutter/material.dart';

class ListViewOfHeaderSelections extends StatefulWidget {
  const ListViewOfHeaderSelections({super.key});

  @override
  State<ListViewOfHeaderSelections> createState() =>
      _ListViewOfHeaderSelectionsState();
}

class _ListViewOfHeaderSelectionsState
    extends State<ListViewOfHeaderSelections> {
  int index = 0;
  final List<Categorymodel> categoryModels = [
    Categorymodel(title: 'Trending'),
    Categorymodel(title: 'By Artist'),
    Categorymodel(title: 'ETH'),
    Categorymodel(title: 'BTC'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryModels.length,
        itemBuilder: (context, index) {
          return index == 0
              ? Padding(
                  padding: const EdgeInsets.only(left: 22, right: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        this.index = index;
                      });
                    },
                    child: ContainerOfSelectionHeader(
                      isActive: index == this.index,
                      title: categoryModels[index].title,
                    ),
                  ),
                )
              : index == categoryModels.length - 1
                  ? Padding(
                      padding: const EdgeInsets.only(right: 22, left: 8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            this.index = index;
                          });
                        },
                        child: ContainerOfSelectionHeader(
                          isActive: index == this.index,
                          title: categoryModels[index].title,
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            this.index = index;
                          });
                        },
                        child: ContainerOfSelectionHeader(
                          isActive: index == this.index,
                          title: categoryModels[index].title,
                        ),
                      ),
                    );
        },
      ),
    );
  }
}
