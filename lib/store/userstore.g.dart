// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userstore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$User on UserStoreBase, Store {
  final _$hasUserAtom = Atom(name: 'UserStoreBase.hasUser');

  @override
  bool get hasUser {
    _$hasUserAtom.context.enforceReadPolicy(_$hasUserAtom);
    _$hasUserAtom.reportObserved();
    return super.hasUser;
  }

  @override
  set hasUser(bool value) {
    _$hasUserAtom.context.conditionallyRunInAction(() {
      super.hasUser = value;
      _$hasUserAtom.reportChanged();
    }, _$hasUserAtom, name: '${_$hasUserAtom.name}_set');
  }

  final _$_successAtom = Atom(name: 'UserStoreBase._success');

  @override
  bool get _success {
    _$_successAtom.context.enforceReadPolicy(_$_successAtom);
    _$_successAtom.reportObserved();
    return super._success;
  }

  @override
  set _success(bool value) {
    _$_successAtom.context.conditionallyRunInAction(() {
      super._success = value;
      _$_successAtom.reportChanged();
    }, _$_successAtom, name: '${_$_successAtom.name}_set');
  }

  final _$_userEmailAtom = Atom(name: 'UserStoreBase._userEmail');

  @override
  String get _userEmail {
    _$_userEmailAtom.context.enforceReadPolicy(_$_userEmailAtom);
    _$_userEmailAtom.reportObserved();
    return super._userEmail;
  }

  @override
  set _userEmail(String value) {
    _$_userEmailAtom.context.conditionallyRunInAction(() {
      super._userEmail = value;
      _$_userEmailAtom.reportChanged();
    }, _$_userEmailAtom, name: '${_$_userEmailAtom.name}_set');
  }

  final _$registerAsyncAction = AsyncAction('register');

  @override
  Future<void> register(dynamic _emailController, dynamic _passwordController) {
    return _$registerAsyncAction
        .run(() => super.register(_emailController, _passwordController));
  }

  @override
  String toString() {
    final string = 'hasUser: ${hasUser.toString()}';
    return '{$string}';
  }
}
