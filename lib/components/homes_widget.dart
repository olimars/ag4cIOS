import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomesWidget extends StatefulWidget {
  const HomesWidget({Key? key}) : super(key: key);

  @override
  _HomesWidgetState createState() => _HomesWidgetState();
}

class _HomesWidgetState extends State<HomesWidget> {
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
              child: InkWell(
                onTap: () async {
                  context.pushNamed('Home');
                },
                child: Icon(
                  Icons.home,
                  color: Color(0xFF07215F),
                  size: 37,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'gyup2qxw' /* Home */,
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
