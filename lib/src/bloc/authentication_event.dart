part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

// AppStarted
// LoggedIn
// LoggedOut

class AppStarted extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {}

class LoggedOut extends AuthenticationEvent {}

// TODO(Mario) : https://www.youtube.com/watch?v=Vyx_edzLm20 06:35
