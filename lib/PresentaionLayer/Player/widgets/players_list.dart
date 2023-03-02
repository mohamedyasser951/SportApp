import 'package:flutter/material.dart';

class PlayersList extends StatelessWidget {
  const PlayersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return PlayerItem(
          index: index,
        );
      },
    );
  }
}

class PlayerItem extends StatelessWidget {
  final int index;
  const PlayerItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: Image(
          image: NetworkImage(
            "https://cdn.sportmonks.com//images//soccer//placeholder.png",
          ),
          width: 70,
          height: 70,
        ),
      ),
      title: Text("Messi"),
      subtitle: Text("FCB"),
    );
  }
}
