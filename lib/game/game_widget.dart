import '../backend/backend.dart';
import '../components/class_a_widget.dart';
import '../components/exit_widget.dart';
import '../components/games_widget.dart';
import '../components/homes_widget.dart';
import '../components/register_widget.dart';
import '../components/student_a_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({Key? key}) : super(key: key);

  @override
  _GameWidgetState createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> with TickerProviderStateMixin {
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
            'i63beppe' /* Games */,
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
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Drawer(
          elevation: 16,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    context.pushNamed('Home');
                  },
                  child: HomesWidget(),
                ),
                Align(
                  alignment: AlignmentDirectional(0.1, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Game');
                    },
                    child: GamesWidget(),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'RegisteList',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.topToBottom,
                        ),
                      },
                    );
                  },
                  child: RegisterWidget(),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed('Aclass');
                  },
                  child: ClassAWidget(),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed('Astudent');
                  },
                  child: StudentAWidget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Login');
                    },
                    child: ExitWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(23, 23, 23, 0),
                child: FutureBuilder<List<GamesRecord>>(
                  future: queryGamesRecordOnce(
                    queryBuilder: (gamesRecord) => gamesRecord
                        .where('Idioma',
                            isEqualTo:
                                FFLocalizations.of(context).getVariableText(
                              enText: 'GB',
                              ptText: 'PT',
                              huText: 'HU',
                              itText: 'IT',
                              roText: 'RO',
                              esText: 'ES',
                              trText: 'TU',
                            ))
                        .orderBy('time', descending: true),
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
                    List<GamesRecord> listViewGamesRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewGamesRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewGamesRecord =
                            listViewGamesRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'GameMenu',
                                queryParams: {
                                  'gameRef': serializeParam(
                                      listViewGamesRecord.reference,
                                      ParamType.DocumentReference),
                                }.withoutNulls,
                              );
                            },
                            text: listViewGamesRecord.name!,
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: Color(0xFF087A6B),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
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
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ).animated([animationsMap['columnOnPageLoadAnimation']!]),
      ).animated([animationsMap['containerOnPageLoadAnimation']!]),
    );
  }
}
