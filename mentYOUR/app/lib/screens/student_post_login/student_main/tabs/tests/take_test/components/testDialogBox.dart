import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:mentYOUR/globals.dart';
import 'package:mentYOUR/screens/main/tabs/counsellor_page/components/counsellor_dialogbox_button.dart';
import 'package:mentYOUR/screens/student_post_login/student_main/student_main_page.dart';
import 'package:mentYOUR/screens/student_post_login/student_main/tabs/tests/take_test/take_test.dart';
import 'package:mentYOUR/strings.dart';

class TestDialogBox extends StatelessWidget {
  const TestDialogBox({
    Key? key,
    required this.title,
    required this.testName,
  }) : super(key: key);
  final String title;
  final String testName;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
      ),
      elevation: 2,
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
            bottom: screenHeight * 0.03,
            top: screenHeight * 0.04,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05),
        child: Column(
          children: [
            Icon(CupertinoIcons.checkmark_circle,
                size: screenWidth * 0.5,
                color: COLOR_THEME['backgroundComponents0']),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "DM Sans",
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.02),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TakeTest(testName: testName),
                    ),
                  );
                },
                child: Card(
                  color: COLOR_THEME['buttonBackground'],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: screenHeight * 0.01),
                    child: Text(
                      "Take $testName",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "DM Sans",
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.02),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/displayTestResult");
                },
                child: Card(
                  color: COLOR_THEME['buttonBackground'],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: screenHeight * 0.01),
                    child: Text(
                      "Show Results",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "DM Sans",
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.02),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const StudentMainPage(
                        tabIndex: 1,
                      ),
                    ),
                  );
                },
                child: Card(
                  color: COLOR_THEME['buttonBackground'],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: screenHeight * 0.01),
                    child: Text(
                      "Test Page",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "DM Sans",
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
