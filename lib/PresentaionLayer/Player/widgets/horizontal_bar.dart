import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/BusinessLogic/PlayerCubit/player_bloc.dart';
import 'package:sport_app/BusinessLogic/PlayerCubit/player_events.dart';
import 'package:sport_app/DataLayer/PlayerModels/nations_model.dart';

class HorizontalBar extends StatelessWidget {
  const HorizontalBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
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
        BlocProvider.of<PlayersBloc>(context).add(FetchPlayerByIdEvent(nationModel: nations[index]));
            
      },
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage(nations[index].imagePath),
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
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
