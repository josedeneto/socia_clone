import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../commom_widgets/customize_button.dart';
import '../../commom_widgets/customize_icon_button.dart';
import '../../commom_widgets/customize_outline_button.dart';
import '../../commom_widgets/customize_text_button.dart';
import '../../controllers/signin_controller.dart';
import '../../core/app_colors.dart';
import '../../features/widgets/text_field_widget.dart';
import '../home_page/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLoading = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _signController = SignInController();

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
                      Container(
                        margin: const EdgeInsets.only(bottom: 25),
                        child: const Image(
                          image:
                              AssetImage('assets/images/logo_socia/logo.png'),
                          width: 50,
                          height: 50,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Observer(
                        builder: (_) {
                          return CustomizeTextFormField(
                            enable: !isLoading,
                            onChanged: _signController.setEmail,
                            prefixIcon: Icons.email_outlined,
                            controller: _emailController,
                            keyBoardType: TextInputType.emailAddress,
                            label: 'E-mail',
                            hintText: 'informe o seu E-mail',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor informe e-mail';
                              }
                              return null;
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 2),
                      Observer(builder: (_) {
                        return CustomizeTextFormField(
                          enable: !isLoading,
                          onChanged: _signController.setPassword,
                          suffix: CustomizeIconButton(
                              icon: !_signController.passwordVisible
                                  ? Icons.visibility_rounded
                                  : Icons.visibility_off_outlined,
                              onTap: _signController.togglePasswordVisible),
                          prefixIcon: Icons.lock_outline_rounded,
                          controller: _passwordController,
                          keyBoardType: TextInputType.number,
                          obscureText: !_signController.passwordVisible,
                          label: 'Senha',
                          hintText: 'Informe senha com 6 dígitos',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor informe um código';
                            }
                            return null;
                          },
                        );
                      }),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: CustomizeTextButton(
                            text: 'Esqueceu a senha?',
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/forgot_acess_code');
                            }),
                      ),
                      const SizedBox(height: 10),
                      Observer(
                        builder: (_) {
                          return CustomizeButton(
                              onTextLoad: 'Entrando...',
                              textButton: 'Entrar',
                              isLoading: isLoading,
                              onPressed: () {
                               final valid = _formKey.currentState!.validate();
                                if (valid) {
                                  setState(() {
                                    isLoading = true;
                                  });

                                  Future.delayed(const Duration(seconds: 2))
                                      .then(
                                    (value) => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const Home(),
                                      ),
                                    ),
                                  );
                                } 
                                else if(!valid){
                                  setState(() {
                                    isLoading = false;
                                  });
                                  _passwordController.clear();
                                }
                                else {
                                  
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      backgroundColor: AppColors.red,
                                      content: Text(
                                        'E-mail ou senha inválidos',
                                        style:
                                            TextStyle(color: AppColors.white),
                                      ),
                                    ),
                                  );
                                }
                              });
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomizeOutlineButton(
                          textButton: 'Criar conta',
                          onPressed: () {
                            Navigator.pushNamed(context, '/signUp');
                          }),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
