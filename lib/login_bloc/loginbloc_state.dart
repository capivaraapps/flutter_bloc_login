part of 'loginbloc_bloc.dart';

abstract class LoginblocState extends Equatable {
  const LoginblocState();
}

class LoginblocInitial extends LoginblocState {
  @override
  List<Object> get props => [];
}

class LoggingInBlocState extends LoginblocState {
  @override
  List<Object> get props => [];
}

class LoggedInBlocState extends LoginblocState {
  final String token;

  LoggedInBlocState(this.token);

  @override
  List<Object> get props => [token];
}

class ErrorBlocState extends LoginblocState {
  final String message;

  ErrorBlocState(this.message);

  @override
  List<Object> get props => [message];
}
