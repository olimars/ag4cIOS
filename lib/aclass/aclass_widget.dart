import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/class_a_widget.dart';
import '../components/class_aadd_widget.dart';
import '../components/exit_widget.dart';
import '../components/games_widget.dart';
import '../components/homes_widget.dart';
import '../components/register_widget.dart';
import '../components/student_a_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AclassWidget extends StatefulWidget {
  const AclassWidget({Key? key}) : super(key: key);

  @override
  _AclassWidgetState createState() => _AclassWidgetState();
}

class _AclassWidgetState extends State<AclassWidget>
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
            'tj2ob8ky' /* Class Assessment */,
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: Colors.white,
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
      body: SafeArea(
        child: Container(
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '64dib1x2' /* Class */,
                  ),
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Poppins',
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
              Expanded(
                child: FutureBuilder<List<ClassRecord>>(
                  future: queryClassRecordOnce(
                    queryBuilder: (classRecord) => classRecord
                        .where('User', isEqualTo: currentUserReference)
                        .orderBy('Time_Register', descending: true),
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
                    List<ClassRecord> listViewClassRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewClassRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewClassRecord =
                            listViewClassRecordList[listViewIndex];
                        return Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          secondaryActions: [
                            IconSlideAction(
                              caption: FFLocalizations.of(context).getText(
                                'fkkd6msn' /* New */,
                              ),
                              color: Color(0xFF1D8F11),
                              icon: Icons.assignment_rounded,
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: ClassAaddWidget(
                                        classAadd:
                                            listViewClassRecord.reference,
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                            ),
                            IconSlideAction(
                              caption: FFLocalizations.of(context).getText(
                                'hc17u6s1' /* View */,
                              ),
                              color: Colors.blue,
                              icon: Icons.visibility,
                              onTap: () async {
                                context.pushNamed(
                                  'ClassAviewPage',
                                  queryParams: {
                                    'classviwref': serializeParam(
                                        listViewClassRecord.reference,
                                        ParamType.DocumentReference),
                                  }.withoutNulls,
                                );
                              },
                            ),
                            IconSlideAction(
                              caption: FFLocalizations.of(context).getText(
                                'aszdb7ob' /* Data View */,
                              ),
                              color: Color(0xFFF7790A),
                              icon: Icons.dashboard_rounded,
                              onTap: () async {
                                context.pushNamed(
                                  'DashboardClass',
                                  queryParams: {
                                    'className': serializeParam(
                                        listViewClassRecord.name,
                                        ParamType.String),
                                    'classID': serializeParam(
                                        listViewClassRecord.reference,
                                        ParamType.DocumentReference),
                                  }.withoutNulls,
                                );
                              },
                            ),
                          ],
                          child: ListTile(
                            title: Text(
                              listViewClassRecord.name!,
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF090909),
                                      ),
                            ),
                            trailing: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFF303030),
                              size: 26,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            dense: false,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ).animated([animationsMap['columnOnPageLoadAnimation']!]),
        ).animated([animationsMap['containerOnPageLoadAnimation']!]),
      ),
    );
  }
}
