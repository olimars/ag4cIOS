import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassAaddWidget extends StatefulWidget {
  const ClassAaddWidget({
    Key? key,
    this.classAadd,
  }) : super(key: key);

  final DocumentReference? classAadd;

  @override
  _ClassAaddWidgetState createState() => _ClassAaddWidgetState();
}

class _ClassAaddWidgetState extends State<ClassAaddWidget> {
  TextEditingController? textController;
  double? ratingBar1Value;
  double? ratingBar2Value;
  double? ratingBar3Value;
  double? ratingBar4Value;
  double? ratingBarValue;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 582,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFD8D6D5),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFD8D6D5),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'j62u84qx' /* Class assessment */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF181414),
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'kf4fv6n3' /* Self-awareness? */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF181414),
                        ),
                  ),
                ),
              ],
            ),
          ),
          RatingBar.builder(
            onRatingUpdate: (newValue) =>
                setState(() => ratingBar1Value = newValue),
            itemBuilder: (context, index) => Icon(
              Icons.star_rounded,
              color: Color(0xFFFEE002),
            ),
            direction: Axis.horizontal,
            initialRating: ratingBar1Value ??= 0,
            unratedColor: FlutterFlowTheme.of(context).tertiaryColor,
            itemCount: 3,
            itemSize: 40,
            glowColor: Color(0xFFFEE002),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'r4rv9dzo' /* Self-management? */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF181414),
                        ),
                  ),
                ),
              ],
            ),
          ),
          RatingBar.builder(
            onRatingUpdate: (newValue) =>
                setState(() => ratingBar2Value = newValue),
            itemBuilder: (context, index) => Icon(
              Icons.star_rounded,
              color: Color(0xFFF3E409),
            ),
            direction: Axis.horizontal,
            initialRating: ratingBar2Value ??= 0,
            unratedColor: FlutterFlowTheme.of(context).tertiaryColor,
            itemCount: 3,
            itemSize: 40,
            glowColor: Color(0xFFF3E409),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'ray0u87s' /* Responsible decision making? */,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF181414),
                        ),
                  ),
                ),
              ],
            ),
          ),
          RatingBar.builder(
            onRatingUpdate: (newValue) =>
                setState(() => ratingBar3Value = newValue),
            itemBuilder: (context, index) => Icon(
              Icons.star_rounded,
              color: Color(0xFFF3E409),
            ),
            direction: Axis.horizontal,
            initialRating: ratingBar3Value ??= 0,
            unratedColor: Color(0xFFF9F7F7),
            itemCount: 3,
            itemSize: 40,
            glowColor: Color(0xFFF3E409),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AutoSizeText(
                  FFLocalizations.of(context).getText(
                    '1e8j3mib' /* Relationship skills? */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF181414),
                      ),
                ),
              ),
            ],
          ),
          RatingBar.builder(
            onRatingUpdate: (newValue) =>
                setState(() => ratingBar4Value = newValue),
            itemBuilder: (context, index) => Icon(
              Icons.star_rounded,
              color: Color(0xFFF3E409),
            ),
            direction: Axis.horizontal,
            initialRating: ratingBar4Value ??= 0,
            unratedColor: Color(0xFFFEFEFE),
            itemCount: 3,
            itemSize: 40,
            glowColor: Color(0xFFF3E409),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AutoSizeText(
                  FFLocalizations.of(context).getText(
                    'tvoccm9z' /* Social awareness? */,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF181414),
                      ),
                ),
              ),
            ],
          ),
          RatingBar.builder(
            onRatingUpdate: (newValue) =>
                setState(() => ratingBarValue = newValue),
            itemBuilder: (context, index) => Icon(
              Icons.star_rounded,
              color: Color(0xFFF3E409),
            ),
            direction: Axis.horizontal,
            initialRating: ratingBarValue ??= 0,
            unratedColor: Color(0xFFFEFEFE),
            itemCount: 3,
            itemSize: 40,
            glowColor: Color(0xFFF3E409),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 7, 12, 0),
            child: TextFormField(
              controller: textController,
              obscureText: false,
              decoration: InputDecoration(
                hintText: FFLocalizations.of(context).getText(
                  'bcw4fl2v' /* Description */,
                ),
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
                contentPadding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFFFEFEFE),
                  ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    context.pop();
                  },
                  text: FFLocalizations.of(context).getText(
                    'bvdvpgym' /* Cancel */,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFFEB070A),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
                FFButtonWidget(
                  onPressed: () async {
                    final classAvaliCreateData = createClassAvaliRecordData(
                      autoconhecimento: ratingBar1Value?.round(),
                      autogestao: ratingBar2Value?.round(),
                      trd: ratingBar3Value?.round(),
                      ci: ratingBar4Value?.round(),
                      cs: ratingBarValue?.round(),
                      descicao: textController!.text,
                      date: getCurrentTimestamp,
                      classref: widget.classAadd,
                    );
                    await ClassAvaliRecord.collection
                        .doc()
                        .set(classAvaliCreateData);
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Infomation'),
                          content: Text('success'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                    setState(() {
                      textController?.clear();
                    });
                    context.pop();
                  },
                  text: FFLocalizations.of(context).getText(
                    'ukv4pgvf' /* Save */,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF1A7F0F),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
