import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<Map<String, bool>> {
  HomeCubit()
    : super({
        'Customize Home.needs your attention': false,
        'Customize Home.Recently added': false,
        'Customize Home.Projects': false,
        'Customize Home.Weekly project progress': false,
        'Customize Home.My tasks': false,
        'Customize Home.Comments that mentioned you': false,
      });

  Map<String, bool>? _initialSwitchesState;

  void toggleSwitch(String key, bool value) {
    final newState = Map<String, bool>.from(state);
    newState[key] = value;
    emit(newState);
  }

  void closeCard(String key) {
    final newState = Map<String, bool>.from(state);
    newState[key] = true;
    emit(newState);
  }

  void saveSwitches(Map<String, bool> newState) {
    _initialSwitchesState = null;
    emit(newState);
  }

  void cancelChanges() {
    if (_initialSwitchesState != null) {
      emit(Map<String, bool>.from(_initialSwitchesState!));
    }
  }

  void setInitialState(Map<String, bool> initialState) {
    _initialSwitchesState = Map<String, bool>.from(initialState);
  }
}
