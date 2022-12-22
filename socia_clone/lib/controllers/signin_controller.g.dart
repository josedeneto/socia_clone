// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignInController on _SignInController, Store {
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_SignInController.isPasswordValid'))
          .value;
  Computed<bool>? _$isNumberPhoneValidComputed;

  @override
  bool get isNumberPhoneValid => (_$isNumberPhoneValidComputed ??=
          Computed<bool>(() => super.isNumberPhoneValid,
              name: '_SignInController.isNumberPhoneValid'))
      .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SignInController.isFormValid'))
          .value;

  late final _$numberPhoneAtom =
      Atom(name: '_SignInController.numberPhone', context: context);

  @override
  String get numberPhone {
    _$numberPhoneAtom.reportRead();
    return super.numberPhone;
  }

  @override
  set numberPhone(String value) {
    _$numberPhoneAtom.reportWrite(value, super.numberPhone, () {
      super.numberPhone = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_SignInController.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$passwordVisibleAtom =
      Atom(name: '_SignInController.passwordVisible', context: context);

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  late final _$_SignInControllerActionController =
      ActionController(name: '_SignInController', context: context);

  @override
  void setNumberPhone(String value) {
    final _$actionInfo = _$_SignInControllerActionController.startAction(
        name: '_SignInController.setNumberPhone');
    try {
      return super.setNumberPhone(value);
    } finally {
      _$_SignInControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_SignInControllerActionController.startAction(
        name: '_SignInController.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_SignInControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateNumberPhone(String? value) {
    final _$actionInfo = _$_SignInControllerActionController.startAction(
        name: '_SignInController.validateNumberPhone');
    try {
      return super.validateNumberPhone(value);
    } finally {
      _$_SignInControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatePassword(String? value) {
    final _$actionInfo = _$_SignInControllerActionController.startAction(
        name: '_SignInController.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_SignInControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePasswordVisible() {
    final _$actionInfo = _$_SignInControllerActionController.startAction(
        name: '_SignInController.togglePasswordVisible');
    try {
      return super.togglePasswordVisible();
    } finally {
      _$_SignInControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
numberPhone: ${numberPhone},
password: ${password},
passwordVisible: ${passwordVisible},
isPasswordValid: ${isPasswordValid},
isNumberPhoneValid: ${isNumberPhoneValid},
isFormValid: ${isFormValid}
    ''';
  }
}
