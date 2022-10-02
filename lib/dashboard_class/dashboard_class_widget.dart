import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_charts.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DashboardClassWidget extends StatefulWidget {
  const DashboardClassWidget({
    Key? key,
    this.className,
    this.classID,
  }) : super(key: key);

  final String? className;
  final DocumentReference? classID;

  @override
  _DashboardClassWidgetState createState() => _DashboardClassWidgetState();
}

class _DashboardClassWidgetState extends State<DashboardClassWidget>
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
            'zu9rrwsu' /* Data View */,
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
      body: StreamBuilder<List<ClassAvaliRecord>>(
        stream: queryClassAvaliRecord(
          queryBuilder: (classAvaliRecord) => classAvaliRecord
              .where('Classref', isEqualTo: widget.classID)
              .orderBy('Date', descending: true),
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
          List<ClassAvaliRecord> containerClassAvaliRecordList = snapshot.data!;
          // Return an empty Container when the document does not exist.
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final containerClassAvaliRecord =
              containerClassAvaliRecordList.isNotEmpty
                  ? containerClassAvaliRecordList.first
                  : null;
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFEEEEEE), Color(0xFFD8D6D5)],
                stops: [0.2, 1],
                begin: AlignmentDirectional(1, -1),
                end: AlignmentDirectional(-1, 1),
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'rk6tj17f' /* Class */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    indent: 34,
                    endIndent: 34,
                    color: Color(0xFF077A74),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 55),
                        child: Text(
                          widget.className!,
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 12, 0),
                          child: Container(
                            width: 300,
                            height: 300,
                            child: FlutterFlowLineChart(
                              data: [
                                FFLineChartData(
                                  xData: List.generate(
                                      random_data.randomInteger(0, 5),
                                      (index) =>
                                          random_data.randomInteger(0, 5)),
                                  yData: List.generate(
                                      random_data.randomInteger(0, 5),
                                      (index) =>
                                          random_data.randomInteger(0, 3)),
                                  settings: LineChartBarData(
                                    color: Color(0xFF11066C),
                                    barWidth: 1,
                                    isCurved: true,
                                    preventCurveOverShooting: true,
                                  ),
                                )
                              ],
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: Colors.white,
                                showGrid: true,
                                borderColor: Colors.black,
                                borderWidth: 1,
                              ),
                              axisBounds: AxisBounds(
                                minX: 1,
                                minY: 0,
                                maxX: 5,
                                maxY: 3,
                              ),
                              xAxisLabelInfo: AxisLabelInfo(
                                title: FFLocalizations.of(context).getText(
                                  'bis4m5h6' /* Questions */,
                                ),
                                titleTextStyle: TextStyle(
                                  fontSize: 14,
                                ),
                                showLabels: true,
                                labelInterval: 1,
                              ),
                              yAxisLabelInfo: AxisLabelInfo(
                                title: FFLocalizations.of(context).getText(
                                  '94tzo6ox' /* Rating */,
                                ),
                                titleTextStyle: TextStyle(
                                  fontSize: 14,
                                ),
                                showLabels: true,
                                labelTextStyle: TextStyle(),
                                labelInterval: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            dateTimeFormat(
                                'd/M/y', containerClassAvaliRecord!.date!),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(23, 0, 0, 0),
                          child: LinearPercentIndicator(
                            percent: 1,
                            width: 120,
                            lineHeight: 24,
                            animation: true,
                            progressColor: Color(0xFF0B2B64),
                            backgroundColor: Color(0xFFF1F4F8),
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Text(
                          dateTimeFormat(
                              'd/M/y', containerClassAvaliRecord!.date!),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(23, 0, 0, 0),
                        child: LinearPercentIndicator(
                          percent: 1,
                          width: 120,
                          lineHeight: 24,
                          animation: true,
                          progressColor: Color(0xFFB20B90),
                          backgroundColor: Color(0xFFF1F4F8),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Text(
                          dateTimeFormat(
                              'd/M/y', containerClassAvaliRecord!.date!),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(23, 0, 0, 0),
                        child: LinearPercentIndicator(
                          percent: 1,
                          width: 120,
                          lineHeight: 24,
                          animation: true,
                          progressColor: Color(0xFFF7790A),
                          backgroundColor: Color(0xFFF1F4F8),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                ],
              ).animated([animationsMap['columnOnPageLoadAnimation']!]),
            ),
          ).animated([animationsMap['containerOnPageLoadAnimation']!]);
        },
      ),
    );
  }
}
