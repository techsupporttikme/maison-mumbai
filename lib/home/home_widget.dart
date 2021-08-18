import '../backend/backend.dart';
import '../categories/categories_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.primaryColor,
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
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
          child: StreamBuilder<List<Loyalty2Record>>(
            stream: queryLoyalty2Record(
              queryBuilder: (loyalty2Record) =>
                  loyalty2Record.orderBy('created_at', descending: true),
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.primaryColor,
                    ),
                  ),
                );
              }
              List<Loyalty2Record> columnLoyalty2RecordList = snapshot.data;
              // Customize what your widget looks like with no query results.
              if (snapshot.data.isEmpty) {
                return Container(
                  height: 100,
                  child: Center(
                    child: Text('No results.'),
                  ),
                );
              }
              final columnLoyalty2Record = columnLoyalty2RecordList.first;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StreamBuilder<Loyalty1Record>(
                      stream: Loyalty1Record.getDocument(
                          columnLoyalty2Record.loyalty1),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                          );
                        }
                        final columnLoyalty1Record = snapshot.data;
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(-5.11, 0),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.asset(
                                                  'assets/images/top-view-vegetable-salad-with-cheese-cucumbers-tomatoes-dark-background.jpg',
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.78, -0.01),
                                            child: Text(
                                              'Make Your First ',
                                              style: FlutterFlowTheme.subtitle2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFEBE4E4),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.78, 0.4),
                                            child: Text(
                                              'Order Here.',
                                              style: FlutterFlowTheme.subtitle2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFEBE4E4),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(0, 0),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.asset(
                                                  'assets/images/Taste.jpeg',
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.14, -0.08),
                                            child: Text(
                                              'TREAT YOUR TASTEBUDS ',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFEBE4E4),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.17, 0.25),
                                            child: Text(
                                              'WITH MOUTH WATERING ',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFEBE4E4),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.25, 0.57),
                                            child: Text(
                                              'FRANKIES',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFEBE4E4),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.asset(
                                                'assets/images/delicious.jpeg',
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.68, 0.03),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 10, 0),
                                              child: Text(
                                                'Taste the Delicious ',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFEBE4E4),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.78, 0.36),
                                            child: Text(
                                              'Recipes',
                                              style: FlutterFlowTheme.subtitle2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFEBE4E4),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(-0.98, -0.24),
                                          child: Icon(
                                            Icons.category,
                                            color: Color(0xADFF0404),
                                            size: 24,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.73, 0.07),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            child: Text(
                                              'Categories',
                                              style: FlutterFlowTheme.subtitle2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0.91, 0.36),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                  reverseDuration: Duration(
                                                      milliseconds: 300),
                                                  child: CategoriesWidget(),
                                                ),
                                              );
                                            },
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment(-0.96, 0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                decoration: BoxDecoration(
                                                  color: Color(0xEA201B1B),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  Alignment(-0.22, -0.49),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 10, 0, 0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/soya chop.jpeg',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(0.06, 0.93),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 50, 0, 0),
                                                child: Text(
                                                  'Curry Wraps',
                                                  style: FlutterFlowTheme
                                                      .subtitle2
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFEBE4E4),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment(0, 0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                decoration: BoxDecoration(
                                                  color: Color(0xEA201B1B),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  Alignment(-0.02, -0.57),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 10, 0, 0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/samosa chaat.jpeg',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(0.07, 0.8),
                                              child: Text(
                                                'Snacks &',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFEBE4E4),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(0.06, 1.01),
                                              child: Text(
                                                'Chaat',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFEBE4E4),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: BoxDecoration(
                                                color: Color(0xEA201B1B),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(0.02, -0.67),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 10, 0, 0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/meat curry.jpeg',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(0.27, 1.01),
                                              child: Text(
                                                'Mumbai Bowls',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFEBE4E4),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: BoxDecoration(
                                                color: Color(0xEA201B1B),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(-0.02, -0.3),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/lassi.jpeg',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(0.01, 1),
                                              child: Text(
                                                'Lassi',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFEBE4E4),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment(0, 0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                decoration: BoxDecoration(
                                                  color: Color(0xEA201B1B),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(0.38, -0.54),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/indian-food-kadai-paneer.jpg',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(0.04, 1.02),
                                              child: Text(
                                                'Thali',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFEBE4E4),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            decoration: BoxDecoration(
                                              color: Color(0xEA201B1B),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.14, -0.55),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/ginger.jpeg',
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.12, 0.93),
                                            child: Text(
                                              'Soft Beverges',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFEBE4E4),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.card_giftcard,
                                    color: Color(0xD4017C01),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      'Loyalty Rewards',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.network(
                                              columnLoyalty1Record.imageurl,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.95,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.network(
                                                columnLoyalty2Record.imageurl,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.95,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                fit: BoxFit.cover,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: Color(0xADFF0404),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      'Your Closest Location',
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.95,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.4,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF7F7F7),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.asset(
                                              'assets/images/restaurant image.jpeg',
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.95,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.86, 0.17),
                                            child: Text(
                                              'Maison Mumbai -',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.33, 0.94),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 10),
                                              child: Text(
                                                ' 11 AM  to  10 PM',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xCC201B1B),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.35, 0.19),
                                            child: Text(
                                              'Restaurant at ',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.79, 0.96),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 10),
                                              child: Text(
                                                'Opening hours -',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.66, 0.52),
                                            child: Text(
                                              'Grimbsy, ON L3M 4EB,',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.91, 0.36),
                                            child: Text(
                                              '424 S Service Rd unit R08,',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.18, 0.67),
                                            child: Text(
                                              'Canada',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFA1313),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.28, 0.08),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                40, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://goo.gl/maps/gKR2gM9kdPddT1fC6');
                                              },
                                              child: Text(
                                                'View the Location',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0.51, -0.03),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://goo.gl/maps/gKR2gM9kdPddT1fC6');
                                            },
                                            child: Icon(
                                              Icons.location_on_sharp,
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              size: 24,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Our Specality',
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            decoration: BoxDecoration(
                                              color: Color(0xD7FFFFFF),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.94, -0.78),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 10, 10),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/street-style-veg-schezwan-aloo-frankie-roll-street-style-veg-schezwan-aloo-frankie-roll-schezwan-cuisine-asia-chinese-cuisine-127133576 (1).jpg',
                                                fit: BoxFit.fitHeight,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0.02, -0.81),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 10),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/istockphoto-1051064998-612x612-2.jpg',
                                                fit: BoxFit.fitHeight,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(1.07, -0.8),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 10),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/indian-food-kadai-paneer.jpg',
                                                fit: BoxFit.fitHeight,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.96, 0.57),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/papadi chaat.jpeg',
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.02, 0.58),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/dahi vada.jpeg',
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0.95, 0.59),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/meat curry.jpeg',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.79, -0.2),
                                          child: Text(
                                            'Butter',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.81, -0.08),
                                          child: Text(
                                            'Chicken',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0.02, -0.2),
                                          child: Text(
                                            'Tandoori ',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0, -0.07),
                                          child: Text(
                                            'Chicken',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0.91, -0.2),
                                          child: Text(
                                            'Vegetarian ',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.78, 0.81),
                                          child: Text(
                                            'Papad',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.04, 0.83),
                                          child: Text(
                                            'Dahi',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0.73, 0.82),
                                          child: Text(
                                            'Meat',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0.73, -0.07),
                                          child: Text(
                                            'Thali',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.77, 0.91),
                                          child: Text(
                                            'Chaat',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.04, 0.92),
                                          child: Text(
                                            'Vada',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(0.74, 0.91),
                                          child: Text(
                                            'Curry',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'SIGNATURE DISHES',
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.47,
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/images/mango-lassi-yogurt-smoothie-healthy-probiotic-cold-summer-drink-mango-lassi-lassie-yogurt-smoothie-healthy-probiotic-cold-summer-drink-mango-beverage.jpg',
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.47,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.47,
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'assets/images/chicken.jpeg',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.47,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.47,
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/images/paneer.jpeg',
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.47,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.47,
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'assets/images/street-style-veg-schezwan-aloo-frankie-roll-street-style-veg-schezwan-aloo-frankie-roll-schezwan-cuisine-asia-chinese-cuisine-127133576 (1).jpg',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.47,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
