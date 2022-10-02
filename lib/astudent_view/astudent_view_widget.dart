import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AstudentViewWidget extends StatefulWidget {
  const AstudentViewWidget({
    Key? key,
    this.studentrefA,
  }) : super(key: key);

  final DocumentReference? studentrefA;

  @override
  _AstudentViewWidgetState createState() => _AstudentViewWidgetState();
}

class _AstudentViewWidgetState extends State<AstudentViewWidget> {
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
            '84sawfdl' /* Student Assessment */,
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
                  'fw2t40xh' /* Student List */,
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
              child: StreamBuilder<List<StudenteRecord>>(
                stream: queryStudenteRecord(
                  queryBuilder: (studenteRecord) => studenteRecord
                      .where('ClassR', isEqualTo: widget.studentrefA)
                      .orderBy('Timestamp'),
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
                  List<StudenteRecord> listViewStudenteRecordList =
                      snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewStudenteRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewStudenteRecord =
                          listViewStudenteRecordList[listViewIndex];
                      return Slidable(
                        actionPane: const SlidableScrollActionPane(),
                        secondaryActions: [
                          IconSlideAction(
                            caption: FFLocalizations.of(context).getText(
                              'boblci7d' /* New */,
                            ),
                            color: Color(0xFF1D8F11),
                            icon: Icons.assignment_rounded,
                            onTap: () async {
                              context.pushNamed(
                                'StudentAcreatPage',
                                queryParams: {
                                  'studentcrateAref': serializeParam(
                                      listViewStudenteRecord.reference,
                                      ParamType.DocumentReference),
                                }.withoutNulls,
                              );
                            },
                          ),
                          IconSlideAction(
                            caption: FFLocalizations.of(context).getText(
                              '0krl8lnn' /* View */,
                            ),
                            color: Colors.blue,
                            icon: Icons.visibility,
                            onTap: () async {
                              context.pushNamed(
                                'StudentAviewPage',
                                queryParams: {
                                  'studentcrateAref': serializeParam(
                                      listViewStudenteRecord.reference,
                                      ParamType.DocumentReference),
                                }.withoutNulls,
                              );
                            },
                          ),
                          IconSlideAction(
                            caption: FFLocalizations.of(context).getText(
                              'ub9fu0ck' /* Data view */,
                            ),
                            color: Color(0xFFF7790A),
                            icon: Icons.dashboard_rounded,
                            onTap: () async {
                              context.pushNamed(
                                'Dashboard',
                                queryParams: {
                                  'idaluno': serializeParam(
                                      listViewStudenteRecord.reference,
                                      ParamType.DocumentReference),
                                  'nomealuno': serializeParam(
                                      listViewStudenteRecord.name,
                                      ParamType.String),
                                  'age': serializeParam(
                                      listViewStudenteRecord.age,
                                      ParamType.String),
                                  'gender': serializeParam(
                                      listViewStudenteRecord.genero,
                                      ParamType.String),
                                }.withoutNulls,
                              );
                            },
                          ),
                          IconSlideAction(
                            caption: FFLocalizations.of(context).getText(
                              'uomonef4' /* Delete */,
                            ),
                            color: Color(0xFFC8171C),
                            icon: Icons.restore_from_trash_sharp,
                            onTap: () async {
                              await listViewStudenteRecord.reference.delete();
                            },
                          ),
                        ],
                        child: ListTile(
                          title: Text(
                            listViewStudenteRecord.name!,
                            style: FlutterFlowTheme.of(context).title3.override(
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
        ),
      ),
    );
  }
}
