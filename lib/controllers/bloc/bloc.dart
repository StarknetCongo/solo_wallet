import 'package:bloc/bloc.dart';
import 'package:solo_wallet/controllers/bloc/event.dart';
import 'package:solo_wallet/controllers/bloc/state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(INITIALSTATE());
}
