import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassAViewWidget extends StatefulWidget {
  const ClassAViewWidget({Key? key}) : super(key: key);

  @override
  _ClassAViewWidgetState createState() => _ClassAViewWidgetState();
}

class _ClassAViewWidgetState extends State<ClassAViewWidget> {
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
      height: 550,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFD8D6D5),
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(140, 0, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'mhed8hy6' /* Class assessment */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF181414),
                        ),
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
                      'nrdfsd9g' /* Self-awareness? */,
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
                      'ow37zq6q' /* Self-management? */,
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
                      'hk56gmxv' /* Responsible decision making? */,
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
                    'sazv02g9' /* Relationship skills? */,
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
                    '58e2odqt' /* Social awareness? */,
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
                  'i53dlrvr' /* Description */,
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
                    color: Color(0xFF181414),
                  ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
