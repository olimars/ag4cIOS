import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassAWidget extends StatefulWidget {
  const ClassAWidget({Key? key}) : super(key: key);

  @override
  _ClassAWidgetState createState() => _ClassAWidgetState();
}

class _ClassAWidgetState extends State<ClassAWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
              child: Icon(
                Icons.supervisor_account_rounded,
                color: Color(0xFF07215F),
                size: 40,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '4pk3um6f' /* Class  Evaluation */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
