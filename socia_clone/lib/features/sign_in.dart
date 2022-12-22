/*import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import 'widgets/text_field_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

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
                          image: AssetImage('assets/images/icons/icone.png'),
                          width: 50,
                          height: 50,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomizeTextFormField(
                        enable: !isLoading,
                        onChanged: (value){},
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
                      ),
                      const SizedBox(height: 2),
                      CustomizeTextFormField(
                          enable: !isLoading,
                          onChanged: loginController.setAcessCode,
                          suffix: CustomizeIconButton(
                              icon: !loginController.acessCodeVisible
                                  ? Icons.visibility_rounded
                                  : Icons.visibility_off_outlined,
                              onTap: loginController.toggleAcessCodeVisible),
                          prefixIcon: Icons.lock_outline_rounded,
                          controller: _passwordController,
                          keyBoardType: TextInputType.number,
                          obscureText: !loginController.acessCodeVisible,
                          label: 'Código de acesso',
                          hintText: 'Informe o código de acesso',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor informe um código';
                            } else if (value.length < 6) {
                              return 'Por favor digite uma senha com 6 caracteres';
                            }
                            return null;
                          },
                        )
                      ,
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: CustomizeTextButton(
                            text: 'Esqueci o código',
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/forgot_acess_code');
                            }),
                      ),
                      const SizedBox(height: 10),
                      Observer(
                        builder: (_) {
                          return CustomizeButton(
                            onTextLoad: 'Acessando...',
                            textButton: 'Acessar',
                            isLoading: isLoading,
                            onPressed: loginController.isFormValid
                                ? () async {
                                    if (_formKey.currentState!.validate()) {
                                      setState(() {
                                        isLoading = true;
                                      });
                                      var r = {
                                        'title': _emailController.text,
                                        'body': _passwordController.text
                                      };
                                      var response = await BaseClientApi()
                                          .post('/posts', r);
                                      if (response) {
                                        FocusScopeNode currentFocus =
                                            FocusScopeNode();
                                        if (currentFocus.hasPrimaryFocus) {
                                          currentFocus.unfocus();
                                        }
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => const HomePage(),
                                          ),
                                        );
                                      } else {
                                        setState(() {
                                          isLoading = false;
                                        });
                                        _passwordController.clear();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            backgroundColor: AppColors.red,
                                            content: Text(
                                              'E-mail ou senha inválidos',
                                              style: TextStyle(
                                                  color: AppColors.white),
                                            ),
                                          ),
                                        );
                                      }
                                    }
                                  }
                                : null,
                          );
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
}*/
