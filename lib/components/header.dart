import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/logo.png',
            width: 50,
            height:50,
          ),

          SizedBox(width: 10),

          Text(
            "Lengo",
            style: GoogleFonts.reenieBeanie(
              fontSize: 35
            ),
          ),

          Spacer(),

        ],
      ),
    );
  }
}