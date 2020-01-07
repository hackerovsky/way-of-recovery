class AuthenticationState {
  String name;
  bool authenticated;

  AuthenticationState.initial({this.authenticated = false});

  AuthenticationState.authenticated({this.authenticated = true});

  AuthenticationState.name({this.name = 'name'});

  AuthenticationState.failed({this.authenticated = false});

  AuthenticationState.signedOut({this.authenticated = false});
}