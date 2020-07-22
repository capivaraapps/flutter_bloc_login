part of 'loginbloc_bloc.dart';

abstract class LoginblocEvent extends Equatable {
  const LoginblocEvent();
}

class DoLoginEvent extends LoginblocEvent {
  final String email;
  final String password;

  DoLoginEvent(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}