import 'package:flutter/cupertino.dart';

class AuthenticationProvider with ChangeNotifier {
  bool _isAuthenticated = false;

  get isUserAuthenticated => _isAuthenticated;

  setAuthentiated() {
    _isAuthenticated = true;

    notifyListeners();
  }

  setUnauthenticate() {
    _isAuthenticated = false;

    notifyListeners();
  }
}
