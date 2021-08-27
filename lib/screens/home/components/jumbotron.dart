import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';

import '../../../constants.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: !isMobile(context) ? 40:0),
                  child: Column(
                    mainAxisAlignment: !isMobile(context) ? MainAxisAlignment.start:MainAxisAlignment.center,
                    crossAxisAlignment: !isMobile(context) ? CrossAxisAlignment.start:CrossAxisAlignment.center,
                    children: <Widget>[
                      if (isMobile(context))
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 20),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/hello.png',
                                  ),
                                  Image.asset(
                                    'assets/images/hello-ar.png',

                                  ),
                                  Image.asset(
                                    'assets/images/hello.png',
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/group.png',
                            ),
                          ],
                        ),
                      Image.asset(
                        'assets/images/lengo_app.png',
                        height: size.height * 0.3,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Scan Me To Download Lengo App For Android.',
                        textAlign: isMobile(context) ? TextAlign.center:TextAlign.start,
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 36 : 18,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
            ),
            if (isDesktop(context) || isTab(context))
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                         children: <Widget>[
                           Image.asset(
                             'assets/images/hello.png',
                           ),
                           SizedBox(width: 5,),
                           Image.asset(
                             'assets/images/hello-ar.png',
                           ),
                           SizedBox(width: 5,),
                           Image.asset(
                             'assets/images/bonjuor.png',
                           ),
                         ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/group.png',
                    width: size.width * 0.3,

                  ),
                ],
              )
          ],
        )
    );
  }
}