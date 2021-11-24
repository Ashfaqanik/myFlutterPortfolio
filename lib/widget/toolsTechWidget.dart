import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/themeProvider.dart';
import 'package:provider/provider.dart';
import 'adaptiveText.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({required this.techName});
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: Colors.greenAccent,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          AdaptiveText(
            " $techName ",
            style: TextStyle(
              color:
                  _themeProvider.lightTheme ? Colors.grey[500] : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
