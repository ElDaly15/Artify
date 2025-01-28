import 'package:coffee_shop/featuers/home/presentation/views/widgets/column_of_container_of_top_collection.dart';
import 'package:flutter/material.dart';

class ContainerOfTopCollectionItem extends StatelessWidget {
  const ContainerOfTopCollectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffF0F0F0),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        child: const ColumnOfTopCollectionContainer(),
      ),
    );
  }
}
