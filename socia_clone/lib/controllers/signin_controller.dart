
import 'package:mobx/mobx.dart';

part 'signin_controller.g.dart';
class SignInController = _SignInController with _$SignInController;

abstract class _SignInController with Store{
 @observable 
 String email = '';
 @observable
 String password = '';
 @observable
 bool passwordVisible = false;

 @action 
  void setEmail(String value)=>email=value;
  
 @action
  void setPassword(String value)=>email = value;
  

  @action
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor informe um e-mail';
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
  void togglePasswordVisible()=> passwordVisible = !passwordVisible;

  @computed 
  bool get isPasswordValid => password.length==4;

  @computed
  bool get isEmailValid => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

  @computed 
  bool get isFormValid => isEmailValid && isPasswordValid;

}