import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/BusinessLogic/PlayerCubit/player_bloc.dart';
import 'package:sport_app/BusinessLogic/PlayerCubit/player_states.dart';
import 'package:sport_app/DataLayer/Data/repository/PlayerRepo/player_repo.dart';
import 'package:sport_app/PresentaionLayer/Player/widgets/horizontal_bar.dart';
import 'package:sport_app/PresentaionLayer/Player/widgets/players_list.dart';

class PlayerScreen extends StatelessWidget {
  final PlayerRepo playerRepo;
  const PlayerScreen({super.key, required this.playerRepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlayersBloc>(
        create: (context) => PlayersBloc(playerRepo: playerRepo),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.abc_outlined,
                color: Colors.black,
              ),
              onPressed: () {
             
              },
            ),
            elevation: 0.0,
            backgroundColor: Colors.white,
            title: const Text(
              'Football Players',
            ),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    HorizontalBar(),
                    SizedBox(
                      height: 20.0,
                    ),
                    PlayerSList()
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class PlayerSList extends StatelessWidget {
  const PlayerSList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayersBloc, PlayersStates>(
      builder: (context, state) {
        if (state is PlayesrNotInitializeState) {
          return const Center(
              child: Text(
            "Please select country flage to Fetch player",
            textAlign: TextAlign.center,
          ));
        } else if (state is PlayersEmptyState) {
          return const Center(
              child: Text(
            "No Players Found !!",
            textAlign: TextAlign.center,
          ));
        } else if (state is PlayersLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(state is PlayersErrorState){
           return const Center(
              child: Text(
            "Something Went Wrong !!",
            textAlign: TextAlign.center,
          ));
        }
        var data = state as PlayersSuccessState;
        var playerModel = data.playerModel;
        return BuildPlayerList(
          playerModel: playerModel,
        );
      },
    );
  }
}
