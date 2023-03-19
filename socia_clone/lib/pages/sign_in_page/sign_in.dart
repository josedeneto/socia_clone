import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:socia_clone/commom_widgets/customize_text_button.dart';

import '../../commom_widgets/custom_loading_button.dart';
import '../../commom_widgets/customize_icon_button.dart';
import '../../controllers/signin_controller.dart';
import '../../core/app_colors.dart';
import '../../commom_widgets/text_field_widget.dart';
import '../home_page/home.dart';
import 'components/forgot_password.dart';
import 'components/logo_component.dart';
import 'components/social_button_tile.dart';
import 'components/welcome_message.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLoading = false;
  final _cNumberPhone = TextEditingController();
  final _cPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _signController = SignInController();

  @override
  void initState() {
    updateAppbar();
    super.initState();
  }

  @override
  void dispose() {
    _cNumberPhone.dispose();
    _cPassword.dispose();
    super.dispose();
  }

  void updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const LogoComponent(),
                    const SizedBox(height: 25),
                    const WelcomeMessage(),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Observer(
                          builder: (_) {
                            return CustomizeTextFormField(
                              maxLenght: 9,
                              enable: !isLoading,
                              onChanged: _signController.setNumberPhone,
                              prefixIcon: Icons.phone_android_outlined,
                              controller: _cNumberPhone,
                              keyBoardType: TextInputType.number,
                              label: 'Telefone',
                              validator: _signController.validateNumberPhone,
                            );
                          },
                        ),
                        Observer(
                          builder: (_) {
                            return CustomizeTextFormField(
                              enable: !isLoading,
                              onChanged: _signController.setPassword,
                              suffix: CustomizeIconButton(
                                icon: !_signController.passwordVisible
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off_outlined,
                                onTap: _signController.togglePasswordVisible,
                              ),
                              prefixIcon: Icons.lock_outline_rounded,
                              controller: _cPassword,
                              keyBoardType: TextInputType.text,
                              obscureText: !_signController.passwordVisible,
                              label: 'Palavra-passe',
                              validator: _signController.validatePassword,
                            );
                          },
                        ),
                      ],
                    ),
                    const ForgotPassword(),
                    const SizedBox(height: 10),
                    Observer(
                      builder: (_) {
                        return CustomLoadingButton(
                          onTextLoad: 'Entrando...',
                          textButton: 'Entrar',
                          isLoading: isLoading,
                          onPressed: () {
                            final valid = _formKey.currentState!.validate();
                            if (valid) {
                              setState(() {
                                isLoading = true;
                              });

                              Future.delayed(const Duration(seconds: 2)).then(
                                (value) => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const Home(),
                                  ),
                                ),
                              );
                            }
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(thickness: 0.5),
                        ),
                        Text(' Ou continue com '),
                        Expanded(
                          child: Divider(thickness: 0.5),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SocialButtonTile(
                            imagePath: 'assets/images/social/google.png'),
                        SizedBox(width: 20),
                        SocialButtonTile(
                            imagePath: 'assets/images/social/apple.png'),
                      ],
                    ),
                    const SizedBox(width: 10),
                    CustomizeTextButton(
                      text: 'Criar conta',
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
