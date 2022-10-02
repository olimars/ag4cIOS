import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/class_a_widget.dart';
import '../components/exit_widget.dart';
import '../components/games_widget.dart';
import '../components/homes_widget.dart';
import '../components/register_widget.dart';
import '../components/student_a_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AstudentWidget extends StatefulWidget {
  const AstudentWidget({
    Key? key,
    this.refClassAlu,
  }) : super(key: key);

  final DocumentReference? refClassAlu;

  @override
  _AstudentWidgetState createState() => _AstudentWidgetState();
}

class _AstudentWidgetState extends State<AstudentWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF087A6B),
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            '0xosnbnd' /* Student Assessment */,
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  's6kk1znd' /* Class */,
                ),
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF141414),
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
              child: StreamBuilder<List<ClassRecord>>(
                stream: queryClassRecord(
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
                              'v2ahwzl2' /* View */,
                            ),
                            color: Colors.blue,
                            icon: Icons.visibility,
                            onTap: () async {
                              context.pushNamed(
                                'AstudentView',
                                queryParams: {
                                  'studentrefA': serializeParam(
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
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF090909),
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_back_ios_sharp,
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
        ),
      ),
    );
  }
}
