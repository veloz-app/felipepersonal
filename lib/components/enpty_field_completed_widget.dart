import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'enpty_field_completed_model.dart';
export 'enpty_field_completed_model.dart';

class EnptyFieldCompletedWidget extends StatefulWidget {
  const EnptyFieldCompletedWidget({super.key});

  @override
  State<EnptyFieldCompletedWidget> createState() =>
      _EnptyFieldCompletedWidgetState();
}

class _EnptyFieldCompletedWidgetState extends State<EnptyFieldCompletedWidget> {
  late EnptyFieldCompletedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnptyFieldCompletedModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
          ),
        ),
      ],
    );
  }
}
