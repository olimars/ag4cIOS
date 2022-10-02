import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class GameConfiguracaoWidget extends StatefulWidget {
  const GameConfiguracaoWidget({
    Key? key,
    this.gameRef,
  }) : super(key: key);

  final DocumentReference? gameRef;

  @override
  _GameConfiguracaoWidgetState createState() => _GameConfiguracaoWidgetState();
}

class _GameConfiguracaoWidgetState extends State<GameConfiguracaoWidget>
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
            'b19672v9' /* Games */,
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: Color(0xFFFEFEFE),
                fontSize: 20,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF1E2429),
      body: FutureBuilder<GamesRecord>(
        future: GamesRecord.getDocumentOnce(widget.gameRef!),
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
          final containerGamesRecord = snapshot.data!;
          return Container(
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ohskmrvp' /* Set Up */,
                    ),
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Lexend Deca',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 17, 0, 0),
                  child: CachedNetworkImage(
                    imageUrl: containerGamesRecord.configImagum!,
                    width: 180,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Image.network(
                    containerGamesRecord.configImagdois!,
                    width: 180,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'hpfge392' /* Equipment */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6, 3, 6, 0),
                  child: Text(
                    containerGamesRecord.equipamento!,
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ],
            ).animated([animationsMap['columnOnPageLoadAnimation']!]),
          ).animated([animationsMap['containerOnPageLoadAnimation']!]);
        },
      ),
    );
  }
}
