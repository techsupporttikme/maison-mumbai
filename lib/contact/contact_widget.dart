import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactWidget extends StatefulWidget {
  ContactWidget({Key key}) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFF060505),
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Image.asset(
              'assets/images/white_logo_transparent_background.png',
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.15,
              fit: BoxFit.fitHeight,
            ),
          ),
          actions: [],
          elevation: 4,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Image.asset(
                    'assets/images/top-view-vegetable-salad-with-cheese-cucumbers-tomatoes-dark-background.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await launchURL('https://goo.gl/maps/gKR2gM9kdPddT1fC6');
                    },
                    child: Icon(
                      Icons.location_pin,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            await launchURL(
                                'https://goo.gl/maps/gKR2gM9kdPddT1fC6');
                          },
                          child: Text(
                            '424 South Service Road',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://goo.gl/maps/gKR2gM9kdPddT1fC6');
                        },
                        child: Text(
                          'Niagara Gateway Centre Grimbsy.Ont.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
                  child: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    'info@maisonmumbai.com',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
                  child: Icon(
                    Icons.phone_iphone,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    '+1  905 800 3099',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
                  child: Icon(
                    Icons.phone_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    '+1 800 663 2511',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await launchURL(
                          'https://www.facebook.com/Maison-Mumbai-111225047711107');
                    },
                    child: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await launchURL(
                          'https://www.instagram.com/maison.mumbai/');
                    },
                    child: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-0.59, 0.4),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(120, 15, 0, 0),
                            child: Text(
                              'version : 1.0.0',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
