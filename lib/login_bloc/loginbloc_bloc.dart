import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_test/LoginService.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'loginbloc_event.dart';
part 'loginbloc_state.dart';

class LoginblocBloc extends Bloc<LoginblocEvent, LoginblocState> {
  final LoginService loginService;

  LoginblocBloc({@required this.loginService}) : super(LoginblocInitial());

  @override
  Stream<LoginblocState> mapEventToState(
    LoginblocEvent event,
  ) async* {
    if (event is DoLoginEvent) {
      yield* _doLogin(event);
    }
  }

  Stream<LoginblocState> _doLogin(DoLoginEvent event) async* {
    yield LoggingInBlocState();

    // login
    try {
      var token = await loginService.login(event.email, event.password);
      yield LoggedInBlocState(token);
    } on LoginException {
      yield ErrorBlocState("Erro ao fazer login");
    }
  }
}
