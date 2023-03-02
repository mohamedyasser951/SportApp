import 'package:flutter/material.dart';
import 'package:sport_app/DataLayer/PlayerModels/player_model.dart';

class BuildPlayerList extends StatelessWidget {
  final PlayerModel playerModel;
  const BuildPlayerList({super.key,required this.playerModel});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Divider(),
      itemCount: playerModel.data!.length,
      itemBuilder: (context, index) {
        return PlayerItem(
          playerModel: playerModel,
          index: index,
        );
      },
    );
  }
}

class PlayerItem extends StatelessWidget {
    final PlayerModel playerModel;

  final int index;
  const PlayerItem({super.key, required this.index,required this.playerModel});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: Image(
          image: NetworkImage(
            playerModel.data![index].imagePath!,
          ),
          width: 70,
          height: 70,
        ),
      ),
      title: Text(playerModel.data![index].name!),
      subtitle: Text(playerModel.data![index].countryId!.toString()),
    );
  }
}
