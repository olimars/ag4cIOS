import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class GameCompenciasAvalWidget extends StatefulWidget {
  const GameCompenciasAvalWidget({Key? key}) : super(key: key);

  @override
  _GameCompenciasAvalWidgetState createState() =>
      _GameCompenciasAvalWidgetState();
}

class _GameCompenciasAvalWidgetState extends State<GameCompenciasAvalWidget>
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
            '8cfb12xd' /* Games */,
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
      body: Container(
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
        child: FutureBuilder<List<GameCompetenciaRecord>>(
          future: queryGameCompetenciaRecordOnce(
            queryBuilder: (gameCompetenciaRecord) =>
                gameCompetenciaRecord.where('Idioma',
                    isEqualTo: FFLocalizations.of(context).getVariableText(
                      enText: 'GB',
                      ptText: 'PT',
                      huText: 'HU',
                      itText: 'IT',
                      roText: 'RO',
                      esText: 'ES',
                      trText: 'TK',
                    )),
            singleRecord: true,
          ),
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
            List<GameCompetenciaRecord> listViewGameCompetenciaRecordList =
                snapshot.data!;
            // Return an empty Container when the document does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final listViewGameCompetenciaRecord =
                listViewGameCompetenciaRecordList.isNotEmpty
                    ? listViewGameCompetenciaRecordList.first
                    : null;
            return ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'peppsfma' /* Competency Ratings */,
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'zv61mbo5' /* Self-awareness */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF181414),
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 3, 4, 0),
                      child: Text(
                        listViewGameCompetenciaRecord!.autoConhecimento!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF090909),
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'qa9eq2qa' /* Self-management */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF181414),
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 3, 4, 0),
                      child: Text(
                        listViewGameCompetenciaRecord!.autoGestao!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF090909),
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'cqeuyvtk' /* Responsible Decision Making */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF181414),
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 3, 4, 0),
                      child: Text(
                        listViewGameCompetenciaRecord!.autoTomadaRespo!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF090909),
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'p1o0rrhx' /* Relationship Skills */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF181414),
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 3, 4, 0),
                      child: Text(
                        listViewGameCompetenciaRecord!.autoCompInter!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF090909),
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'upw5qosd' /* Social Awareness */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF181414),
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 3, 4, 0),
                      child: Text(
                        listViewGameCompetenciaRecord!.autoConsSocial!,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF090909),
                            ),
                      ),
                    ),
                  ],
                ).animated([animationsMap['columnOnPageLoadAnimation']!]),
              ],
            );
          },
        ),
      ).animated([animationsMap['containerOnPageLoadAnimation']!]),
    );
  }
}
