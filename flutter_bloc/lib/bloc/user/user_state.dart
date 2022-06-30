part of 'user_bloc.dart';

@immutable
abstract class UserState {
  //No puedo crear instancias.
  final bool existUser;
  final User? user;

  const UserState({this.existUser = false, this.user});
}

class UserInitialState extends UserState {
  const UserInitialState() : super();
}
