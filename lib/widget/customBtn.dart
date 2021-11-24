import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/provider/themeProvider.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class OutlinedCustomBtn extends StatelessWidget {
  final String btnText;
  final VoidCallback  onPressed;

  const OutlinedCustomBtn(
      {required this.btnText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialButton(
      hoverColor: kPrimaryColor.withAlpha(150),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: kPrimaryColor)),
      onPressed: onPressed,
      child: Text(
        btnText,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w300,
          color: _themeProvider.lightTheme ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}

class CustomFilledBtn extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final VoidCallback? onPressed;
  final Color? btnColor;
  const CustomFilledBtn(
      {this.height,
      this.btnColor,
      this.width = 200.0,
      this.onPressed,
      this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        color: btnColor,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
