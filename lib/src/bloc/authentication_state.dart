part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

// Tres estados:
// No inicializado -> SplashScreen
// Autenticado -> LoginScreen
// No autenticado -> Login
class Uninitialized extends AuthenticationState {
  @override
  String toString() => 'No inicializado';
}

class Authenticated extends AuthenticationState {
  final String displayName;

  Authenticated(this.displayName);

  @override
  // TODO: implement props
  List<Object> get props => [displayName];

  @override
  String toString() => 'Autenticado - displayName: $displayName';
}

class Unauthenticated extends AuthenticationState {
  @override
  String toString() => 'No autenticado';
}
// class AuthenticationInitial extends AuthenticationState {}
