import 'package:mobx/mobx.dart';

part 'signin_controller.g.dart';

class SignInController = _SignInController with _$SignInController;

abstract class _SignInController with Store {
  @observable
  String numberPhone = '';
  @observable
  String password = '';
  @observable
  bool passwordVisible = false;
  @observable
  bool isLoading = false;

  @action
  void setNumberPhone(String value) => numberPhone = value;

  @action
  void setPassword(String value) => password = value;

  @action
  String? validateNumberPhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor informe um telefone válido';
    }
    return null;
  }

  @action
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor informe uma senha';
    }
    return null;
  }

  @action
  void togglePasswordVisible() => passwordVisible = !passwordVisible;

  @computed
  bool get isPasswordValid => password.length >= 4;

  @computed
  bool get isNumberPhoneValid => numberPhone.length == 9;

  @computed
  bool get isFormValid => isNumberPhoneValid && isPasswordValid;
}
