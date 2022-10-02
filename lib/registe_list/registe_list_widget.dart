import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/class_a_widget.dart';
import '../components/exit_widget.dart';
import '../components/games_widget.dart';
import '../components/homes_widget.dart';
import '../components/register_widget.dart';
import '../components/student_a_widget.dart';
import '../components/student_re_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisteListWidget extends StatefulWidget {
  const RegisteListWidget({Key? key}) : super(key: key);

  @override
  _RegisteListWidgetState createState() => _RegisteListWidgetState();
}

class _RegisteListWidgetState extends State<RegisteListWidget>
    with TickerProviderStateMixin {
  TextEditingController? classNameController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'formOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    classNameController = TextEditingController();
  }

  @override
  void dispose() {
    classNameController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF087A6B),
        iconTheme: IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            'cvj8zfes' /* Register Class */,
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: Color(0xFFF9F7F7),
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
                      context.pushNamed(
                        'Game',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.bottomToTop,
                          ),
                        },
                      );
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
                    context.pushNamed(
                      'Astudent',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.bottomToTop,
                        ),
                      },
                    );
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
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFEEE7E3), Color(0xFFEEEEEE)],
              stops: [0, 1],
              begin: AlignmentDirectional(1, -1),
              end: AlignmentDirectional(-1, 1),
            ),
          ),
          child: DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  labelColor: Color(0xFF706D6D),
                  labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                  indicatorColor: FlutterFlowTheme.of(context).secondaryColor,
                  tabs: [
                    Tab(
                      text: FFLocalizations.of(context).getText(
                        'rfujyhef' /* List Class */,
                      ),
                      icon: FaIcon(
                        FontAwesomeIcons.users,
                        color: Color(0xFF077A74),
                      ),
                    ),
                    Tab(
                      text: FFLocalizations.of(context).getText(
                        'pn2zr4l8' /* Create Class */,
                      ),
                      icon: Icon(
                        Icons.group_add,
                        color: Color(0xFF077A74),
                      ),
                    ),
                    Tab(
                      text: FFLocalizations.of(context).getText(
                        'ph6pxwu9' /* Add Student */,
                      ),
                      icon: Icon(
                        Icons.person_add,
                        color: Color(0xFF077A74),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ug80lrg8' /* List Class */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 32,
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
                                    .where('User',
                                        isEqualTo: currentUserReference)
                                    .orderBy('Time_Register'),
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
                                List<ClassRecord> listViewClassRecordList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewClassRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewClassRecord =
                                        listViewClassRecordList[listViewIndex];
                                    return Slidable(
                                      actionPane:
                                          const SlidableScrollActionPane(),
                                      secondaryActions: [
                                        IconSlideAction(
                                          caption: FFLocalizations.of(context)
                                              .getText(
                                            'gxoc2hky' /* Delete */,
                                          ),
                                          color: Color(0xFFEB070A),
                                          icon: Icons.delete,
                                          onTap: () async {
                                            await listViewClassRecord.reference
                                                .delete();
                                          },
                                        ),
                                        IconSlideAction(
                                          caption: FFLocalizations.of(context)
                                              .getText(
                                            'mg7jasgb' /* Students */,
                                          ),
                                          color: Color(0xFF21770B),
                                          icon:
                                              Icons.format_list_bulleted_sharp,
                                          onTap: () async {
                                            context.pushNamed(
                                              'AstudentView',
                                              queryParams: {
                                                'studentrefA': serializeParam(
                                                    listViewClassRecord
                                                        .reference,
                                                    ParamType
                                                        .DocumentReference),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
                                      ],
                                      child: ListTile(
                                        title: Text(
                                          listViewClassRecord.name!,
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'r9ylvh2k' /* Create Class */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Divider(
                              thickness: 2,
                              indent: 34,
                              endIndent: 34,
                              color: Color(0xFF181414),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                TextFormField(
                                  controller: classNameController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'classNameController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'lk2n200u' /* Name */,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFCCD2E2),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 5),
                                    suffixIcon:
                                        classNameController!.text.isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  classNameController?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: Color(0xFF757575),
                                                  size: 22,
                                                ),
                                              )
                                            : null,
                                  ),
                                  style: FlutterFlowTheme.of(context).title1,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'Field is required';
                                    }

                                    return null;
                                  },
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 15, 15),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final classCreateData = createClassRecordData(
                                    name: classNameController!.text,
                                    user: currentUserReference,
                                    timeRegister: getCurrentTimestamp,
                                  );
                                  await ClassRecord.collection
                                      .doc()
                                      .set(classCreateData);
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Information'),
                                        content: Text('Success'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  setState(() {
                                    classNameController?.clear();
                                  });
                                },
                                text: FFLocalizations.of(context).getText(
                                  'wakm1xvd' /* Register */,
                                ),
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
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'wbgft18b' /* Add Student */,
                            ),
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
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
                                    .where('User',
                                        isEqualTo: currentUserReference)
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
                                List<ClassRecord> listViewClassRecordList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewClassRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewClassRecord =
                                        listViewClassRecordList[listViewIndex];
                                    return Slidable(
                                      actionPane:
                                          const SlidableScrollActionPane(),
                                      secondaryActions: [
                                        IconSlideAction(
                                          caption: FFLocalizations.of(context)
                                              .getText(
                                            '9zc7icge' /* Add */,
                                          ),
                                          color: Colors.blue,
                                          icon: Icons.person_add_sharp,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: StudentReWidget(
                                                    classRefStudent:
                                                        listViewClassRecord
                                                            .reference,
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                        ),
                                      ],
                                      child: ListTile(
                                        title: Text(
                                          listViewClassRecord.name!,
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ).animated([animationsMap['formOnPageLoadAnimation']!]),
    );
  }
}
