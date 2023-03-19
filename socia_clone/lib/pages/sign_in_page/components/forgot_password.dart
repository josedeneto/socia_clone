import 'package:flutter/material.dart';

import '../../../commom_widgets/customize_text_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomizeTextButton(
        text: 'Esqueceu a senha?',
        onPressed: () {},
      ),
    );
  }
}