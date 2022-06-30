import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../models/user.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>(((event, emit) => emit(UserSetState(event.user))));
    on<ChangeAge>(((event, emit) {
      if (!state.existUser) return;
      User user = state.user!.copyWith(edad: event.age);
      emit(UserSetState(user));
    }));
    on<CreateProfession>(((event, emit) {
      if (!state.existUser) return;
      final professions = [...state.user!.profesiones!, event.profession];
      User user = state.user!.copyWith(profesiones: professions);
      emit(UserSetState(user));
    }));

    on<DesactivateeUser>(((event, emit) {
      emit(const UserInitialState());
    }));
  }
}
