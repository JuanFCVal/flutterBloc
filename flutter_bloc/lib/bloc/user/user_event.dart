part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User user;
  ActivateUser(this.user);
}

class ChangeAge extends UserEvent {
  final int age;
  ChangeAge(this.age);
}

class CreateProfession extends UserEvent {
  final String profession;
  CreateProfession(this.profession);
}

class DesactivateeUser extends UserEvent {
  DesactivateeUser();
}
