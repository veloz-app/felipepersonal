import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mensagemdiret_model.dart';
export 'mensagemdiret_model.dart';

class MensagemdiretWidget extends StatefulWidget {
  const MensagemdiretWidget({super.key});

  @override
  State<MensagemdiretWidget> createState() => _MensagemdiretWidgetState();
}

class _MensagemdiretWidgetState extends State<MensagemdiretWidget> {
  late MensagemdiretModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MensagemdiretModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(
            width: 282.5,
            height: 175.0,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Flex(
                direction: Axis.vertical,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                    child: Text(
                      'Alex',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'CAESWENnMVVaWGgwWHpWamRuVm9ZVGhtR0FJaUtoSVZRQWFvQVFEU0FRMEtDMGhsYkd4dklGZHZjbXhrK2dNQThnVU5FZ2tKQUFBQUFBQUE4RDhhQU1JQkFBPT0=FZ2tKQUFBQUFBQUE4RDhhQU1JQkFBPT0=FZ2tKQUFBQUFBQUE4RDhhQU1JQkFBPT0= 0=FZ2tKQUFBQUFBQUE4RDhhQU1JQkFBPT0=FZ2tKQUFBQUFBQUE4RDhhQU1JQkFBPT0=0=FZ2tKQUFBQUFBQUE4RDhhQU1JQkFBPT0=FZ2tKQUFBQUFBQUE4RDhhQU1JQkFBPT0= 0=FZ2tKQUFBQUFBQUE4RDhhQU1JQkFBPT0=FZ2tKQUFBQUFBQUE4RDhhQU1JQkFBPT0=',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.montserrat(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
