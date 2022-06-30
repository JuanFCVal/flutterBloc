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

class UserSetState extends UserState {
  final User newUser;
  const UserSetState(this.newUser) : super(existUser: true, user: newUser);
}
