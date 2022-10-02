import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassAviewPageWidget extends StatefulWidget {
  const ClassAviewPageWidget({
    Key? key,
    this.classviwref,
  }) : super(key: key);

  final DocumentReference? classviwref;

  @override
  _ClassAviewPageWidgetState createState() => _ClassAviewPageWidgetState();
}

class _ClassAviewPageWidgetState extends State<ClassAviewPageWidget>
    with TickerProviderStateMixin {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ClassAvaliRecord>>(
      stream: queryClassAvaliRecord(
        queryBuilder: (classAvaliRecord) => classAvaliRecord
            .where('Classref', isEqualTo: widget.classviwref)
            .orderBy('Date', descending: true),
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
        List<ClassAvaliRecord> classAviewPageClassAvaliRecordList =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF087A6B),
            automaticallyImplyLeading: true,
            title: Text(
              FFLocalizations.of(context).getText(
                'q6p6evok' /* View Assessment */,
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
                  child: StreamBuilder<List<ClassAvaliRecord>>(
                    stream: queryClassAvaliRecord(
                      queryBuilder: (classAvaliRecord) => classAvaliRecord
                          .where('Classref', isEqualTo: widget.classviwref)
                          .orderBy('Date'),
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
                      List<ClassAvaliRecord> listViewClassAvaliRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewClassAvaliRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewClassAvaliRecord =
                              listViewClassAvaliRecordList[listViewIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      dateTimeFormat('yMd',
                                          listViewClassAvaliRecord.date!),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF090909),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'yxpejyu0' /* Self-awareness? */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF090909),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RatingBarIndicator(
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: Color(0xFFFEE002),
                                ),
                                direction: Axis.horizontal,
                                rating: listViewClassAvaliRecord
                                    .autoconhecimento!
                                    .toDouble(),
                                unratedColor: Color(0xFF9E9E9E),
                                itemCount: 3,
                                itemSize: 40,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ftdq8ckj' /* Self-management? */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF090909),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RatingBarIndicator(
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: Color(0xFFF3E409),
                                ),
                                direction: Axis.horizontal,
                                rating: listViewClassAvaliRecord.autogestao!
                                    .toDouble(),
                                unratedColor: Color(0xFF9E9E9E),
                                itemCount: 3,
                                itemSize: 40,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ccrdtun7' /* Responsible decision making? */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF090909),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RatingBarIndicator(
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: Color(0xFFF3E409),
                                ),
                                direction: Axis.horizontal,
                                rating:
                                    listViewClassAvaliRecord.trd!.toDouble(),
                                unratedColor: Color(0xFF9E9E9E),
                                itemCount: 3,
                                itemSize: 40,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'y2bwhrel' /* Relationship skills? */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .title2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF090909),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              RatingBarIndicator(
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: Color(0xFFF3E409),
                                ),
                                direction: Axis.horizontal,
                                rating: listViewClassAvaliRecord.cs!.toDouble(),
                                unratedColor: Color(0xFF9E9E9E),
                                itemCount: 3,
                                itemSize: 40,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'tin1jyt4' /* Social awareness? */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .title2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF090909),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              RatingBarIndicator(
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: Color(0xFFF3E409),
                                ),
                                direction: Axis.horizontal,
                                rating: listViewClassAvaliRecord.ci!.toDouble(),
                                unratedColor: Color(0xFF9E9E9E),
                                itemCount: 3,
                                itemSize: 40,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 7, 12, 0),
                                child: TextFormField(
                                  controller: textController ??=
                                      TextEditingController(
                                    text: listViewClassAvaliRecord.descicao,
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: listViewClassAvaliRecord.descicao,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFEFEFE),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFEFEFE),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF090909),
                                      ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await listViewClassAvaliRecord.reference
                                            .delete();
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '6ig1k875' /* Delete */,
                                      ),
                                      icon: Icon(
                                        Icons.delete,
                                        size: 15,
                                      ),
                                      options: FFButtonOptions(
                                        width: 115,
                                        height: 30,
                                        color: Color(0xFFEB070A),
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
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ).animated([animationsMap['columnOnPageLoadAnimation']!]),
          ).animated([animationsMap['containerOnPageLoadAnimation']!]),
        );
      },
    );
  }
}
