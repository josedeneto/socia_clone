import 'package:flutter/material.dart';

class LogoComponent extends StatelessWidget {
  const LogoComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 13),
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 25),
      child: const Image(
        image: AssetImage('assets/images/logo_socia/4.png'),
        width: 80,
        fit: BoxFit.cover,
      ),
    );
  }
}