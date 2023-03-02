import 'package:bloc/bloc.dart';
import 'package:sport_app/BusinessLogic/PlayerCubit/player_events.dart';
import 'package:sport_app/BusinessLogic/PlayerCubit/player_states.dart';
import 'package:sport_app/DataLayer/Data/repository/PlayerRepo/player_repo.dart';
import 'package:sport_app/DataLayer/PlayerModels/player_model.dart';

class PlayersBloc extends Bloc<PlayersEvents, PlayersStates> {
  PlayerRepo playerRepo;
  PlayersBloc({required this.playerRepo}) : super(PlayesrNotInitializeState()) {
    on<FetchPlayerByIdEvent>((event, emit) async {
      emit(PlayersLoadingState());
      PlayerModel playerModel;
      try {
        playerModel = await playerRepo.fetchPlayerById(
            countryId: event.nationModel.countryId);

        // ignore: unnecessary_null_comparison
        if (playerModel == null) {
          emit(PlayersEmptyState());
        } else {
          emit(PlayersSuccessState(playerModel: playerModel));
        }
      } catch (e) {
        emit(PlayersErrorState());
      }
    });
  }
}
