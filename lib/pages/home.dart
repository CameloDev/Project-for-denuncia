import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Container(
                width: 514,
                height: 1214,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF25A25A),
                      FlutterFlowTheme.of(context).secondaryBackground
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional(0, -1),
                    end: AlignmentDirectional(0, 1),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.98, -0.93),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  Icons.keyboard_return,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 33,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.95, -0.94),
              child: FaIcon(
                FontAwesomeIcons.userCircle,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 33,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.72, -0.93),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  Icons.logout,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 33,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.03, -0.7),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/Logo_fala_do_IF01.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.07, -0.3),
              child: Text(
                'O que deseja fazer?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).success,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.1),
              child: Text(
                'Atenção! Você está no modo privado e sua denúncia terá prioridade alta com acompanhamento.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyLarge,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.03, 0.52),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('SuasDenuncias');
                },
                text: 'Aconpanhar uma denúncia',
                icon: FaIcon(
                  FontAwesomeIcons.question,
                ),
                options: FFButtonOptions(
                  width: 244,
                  height: 50,
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: FlutterFlowTheme.of(context).success,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.05, 0.12),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('Denuncia_completa');
                },
                text: 'Fazer uma denúncia',
                icon: FaIcon(
                  FontAwesomeIcons.pen,
                ),
                options: FFButtonOptions(
                  width: 244,
                  height: 50,
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: FlutterFlowTheme.of(context).success,
                  textStyle: FlutterFlowTheme.of(context).titleSmall,
                  elevation: 3,
                  borderSide: BorderSide(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}