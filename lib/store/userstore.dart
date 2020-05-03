// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'userstore.g.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
class User = UserStoreBase with _$User;

abstract class UserStoreBase with Store {
  @observable
  bool hasUser = false;
  @observable
  bool _success = false;
  @observable
  String _userEmail = '';

// Example code for registration.
  @action
  Future<void> register(_emailController, _passwordController) async {
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;
    if (user != null) {
      this._success = true;
      this._userEmail = user.email;
    } else {
      _success = false;
    }
    print(user);
  }
}

final UserStore = User();
