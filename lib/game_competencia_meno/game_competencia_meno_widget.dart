import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class GameCompetenciaMenoWidget extends StatefulWidget {
  const GameCompetenciaMenoWidget({
    Key? key,
    this.gameRef,
  }) : super(key: key);

  final DocumentReference? gameRef;

  @override
  _GameCompetenciaMenoWidgetState createState() =>
      _GameCompetenciaMenoWidgetState();
}

class _GameCompetenciaMenoWidgetState extends State<GameCompetenciaMenoWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 10,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        opacity: 0,
      ),
      finalState: AnimationState(
        opacity: 1,
      ),
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 100,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        opacity: 0,
      ),
      finalState: AnimationState(
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF087A6B),
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            'gbj12m4o' /* Games */,
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: Color(0xFFFEFEFE),
                fontSize: 20,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF1E2429),
      body: StreamBuilder<GamesRecord>(
        stream: GamesRecord.getDocument(widget.gameRef!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 80,
                height: 80,
                child: SpinKitThreeBounce(
                  color: Color(0xFFF7790A),
                  size: 80,
                ),
              ),
            );
          }
          final containerGamesRecord = snapshot.data!;
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFEEE7E3), Color(0xFFD8D6D5)],
                stops: [0, 1],
                begin: AlignmentDirectional(1, -1),
                end: AlignmentDirectional(-1, 1),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 28, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'eo89na5e' /* Competences */,
                    ),
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090909),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  indent: 34,
                  endIndent: 34,
                  color: Color(0xFF077A74),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 17, 0, 0),
                  child: Image.network(
                    containerGamesRecord.compeImags!,
                    width: 180,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 17, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('GameCompenciasDef');
                    },
                    text: FFLocalizations.of(context).getText(
                      'ujvgfsfh' /* Defined Competences */,
                    ),
                    options: FFButtonOptions(
                      width: 240,
                      height: 40,
                      color: Color(0xFF087A6B),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 17, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('GameCompenciasAval');
                    },
                    text: FFLocalizations.of(context).getText(
                      'ekqzl3ds' /* Competency Ratings */,
                    ),
                    options: FFButtonOptions(
                      width: 240,
                      height: 40,
                      color: Color(0xFF087A6B),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ).animated([animationsMap['columnOnPageLoadAnimation']!]),
          ).animated([animationsMap['containerOnPageLoadAnimation']!]);
        },
      ),
    );
  }
}
