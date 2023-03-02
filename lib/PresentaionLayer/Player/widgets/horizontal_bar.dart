import 'package:flutter/material.dart';
import 'package:sport_app/DataLayer/PlayerModel/nations_model.dart';


class HorizontalBar extends StatelessWidget {
  const HorizontalBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: ListView.builder(
        itemBuilder: buildItem,
        itemCount: nations.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget buildItem(context, index) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(nations[index].imagePath),
          ),
        ),
        margin:const EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }

  Widget buildSeparator(context, index) {
    return const VerticalDivider(
      width: 32.0,
      color: Colors.transparent,
    );
  }
}