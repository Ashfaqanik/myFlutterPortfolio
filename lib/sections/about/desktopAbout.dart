import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/provider/themeProvider.dart';
import 'package:my_portfolio/widget/aboutMeMetaData.dart';
import 'package:my_portfolio/widget/adaptiveText.dart';
import 'package:my_portfolio/widget/customTextHeading.dart';
import 'package:my_portfolio/widget/toolsTechWidget.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;

import '../../constants.dart';

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: Colors.teal,//_themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me :)"),
          SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Who am I?",
                        style: GoogleFonts.montserrat(
                            color: Colors.greenAccent, fontSize: height * 0.025),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AdaptiveText(
                        "I'm Khan Md Ashfaque, a Flutter developer.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w400,
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "I have Completed my BSc. in software engineering from American International University Bangladesh. I have been professionally developing mobile apps for about 11 months now. I have worked in teams for various startUps and helped them in launching their projects and got valuable learning experience.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: (Colors.grey[800])!, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Technologies I have worked with:",
                        style: GoogleFonts.montserrat(
                            color: Colors.greenAccent, fontSize: height * 0.018),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < kTools.length; i++)
                            ToolTechWidget(
                              techName: kTools[i],
                            ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: (Colors.grey[800])!, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AboutMeMetaData(
                            data: "Name",
                            information: "Khan Md Ashfaque",
                          ),
                          AboutMeMetaData(
                            data: "Email",
                            information: "ashfaqanik698@gmail.com",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
