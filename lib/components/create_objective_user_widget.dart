import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'create_objective_user_model.dart';
export 'create_objective_user_model.dart';

class CreateObjectiveUserWidget extends StatefulWidget {
  const CreateObjectiveUserWidget({super.key});

  @override
  State<CreateObjectiveUserWidget> createState() =>
      _CreateObjectiveUserWidgetState();
}

class _CreateObjectiveUserWidgetState extends State<CreateObjectiveUserWidget> {
  late CreateObjectiveUserModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateObjectiveUserModel());

    _model.objectiveFinalTextController ??= TextEditingController();
    _model.objectiveFinalFocusNode ??= FocusNode();

    _model.objectivePeriodTextController ??= TextEditingController();
    _model.objectivePeriodFocusNode ??= FocusNode();

    _model.detailsObjectiveCreateUserTextController ??= TextEditingController();
    _model.detailsObjectiveCreateUserFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(22.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'cnonmqgd' /* Criar objetivo */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 21.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                child: Container(
                  width: 413.5,
                  height: 344.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(38.0, 0.0, 38.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 40.93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: StreamBuilder<List<ObjectivesRecord>>(
                            stream: queryObjectivesRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<ObjectivesRecord>
                                  dropDownObjectiveSelectObjectivesRecordList =
                                  snapshot.data!;

                              return FlutterFlowDropDown<String>(
                                controller: _model
                                        .dropDownObjectiveSelectValueController ??=
                                    FormFieldController<String>(null),
                                options:
                                    dropDownObjectiveSelectObjectivesRecordList
                                        .map((e) => e.nameObjective)
                                        .toList(),
                                onChanged: (val) async {
                                  safeSetState(() => _model
                                      .dropDownObjectiveSelectValue = val);
                                  unawaited(
                                    () async {
                                      _model.docReferenceOutput =
                                          await queryObjectivesRecordOnce(
                                        queryBuilder: (objectivesRecord) =>
                                            objectivesRecord.where(
                                          'name_objective',
                                          isEqualTo: _model
                                              .dropDownObjectiveSelectValue,
                                        ),
                                        singleRecord: true,
                                      ).then((s) => s.firstOrNull);
                                    }(),
                                  );

                                  safeSetState(() {});
                                },
                                width: 200.0,
                                height: 40.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '2asfpy7o' /* Selecione o tipo de objetivo */,
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if ((_model.dropDownObjectiveSelectValue !=
                                    'Melhorar alimentação') &&
                                (_model.dropDownObjectiveSelectValue !=
                                    'Dormir melhor') &&
                                (_model.dropDownObjectiveSelectValue != null &&
                                    _model.dropDownObjectiveSelectValue != ''))
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 13.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.objectiveFinalTextController,
                                      focusNode: _model.objectiveFinalFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.objectiveFinalTextController',
                                        Duration(milliseconds: 100),
                                        () => safeSetState(() {}),
                                      ),
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: valueOrDefault<String>(
                                          () {
                                            if (_model
                                                    .dropDownObjectiveSelectValue ==
                                                'Perder peso') {
                                              return 'Kg';
                                            } else if (_model
                                                    .dropDownObjectiveSelectValue ==
                                                'Ganhar massa muscular') {
                                              return 'Kg';
                                            } else if (_model
                                                    .dropDownObjectiveSelectValue ==
                                                'Beber mais água') {
                                              return 'Litros';
                                            } else if (_model
                                                    .dropDownObjectiveSelectValue ==
                                                'Caminhar') {
                                              return 'Km';
                                            } else if (_model
                                                    .dropDownObjectiveSelectValue ==
                                                'Dormir melhor') {
                                              return 'Noites';
                                            } else {
                                              return 'Objetivo Final';
                                            }
                                          }(),
                                          'Objetivo Final',
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        alignLabelWithHint: false,
                                        hintText: () {
                                          if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Caminhar') {
                                            return 'Defina quantos km por dia';
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Beber mais água') {
                                            return 'Defina quantos litros por dia';
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Ganhar massa muscular') {
                                            return 'Defina quantos kg no total';
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Perder peso') {
                                            return 'Defina quantos kg no total';
                                          } else {
                                            return '';
                                          }
                                        }(),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.montserrat(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      minLines: 1,
                                      keyboardType: TextInputType.number,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      enableInteractiveSelection: true,
                                      validator: _model
                                          .objectiveFinalTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        if (!isAndroid && !isiOS)
                                          TextInputFormatter.withFunction(
                                              (oldValue, newValue) {
                                            return TextEditingValue(
                                              selection: newValue.selection,
                                              text: newValue.text
                                                  .toCapitalization(
                                                      TextCapitalization.none),
                                            );
                                          }),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          ].divide(SizedBox(
                              width: _model.dropDownObjectiveSelectValue ==
                                      'Caminhada'
                                  ? 20.0
                                  : 0.0)),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 13.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (_model.dropDownObjectiveSelectValue !=
                                  'Dormir melhor')
                                Flexible(
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropDownTypePeriodValueController ??=
                                        FormFieldController<String>(
                                      _model.dropDownTypePeriodValue ??= '',
                                    ),
                                    options: List<String>.from(['Mês', 'Dia']),
                                    optionLabels: [
                                      FFLocalizations.of(context).getText(
                                        'tjiam20o' /* Mês/Meses */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'rfnmgwgs' /* Dia/dias */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropDownTypePeriodValue = val),
                                    width: 200.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'dxys5v3a' /* Tipo de período */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    elevation: 2.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    borderWidth: 1.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.objectivePeriodTextController,
                                    focusNode: _model.objectivePeriodFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.objectivePeriodTextController',
                                      Duration(milliseconds: 100),
                                      () => safeSetState(() {}),
                                    ),
                                    autofocus: false,
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: () {
                                        if (_model.dropDownTypePeriodValue ==
                                            'Dia') {
                                          return 'Dia/dias';
                                        } else if (_model
                                                .dropDownTypePeriodValue ==
                                            'Mês') {
                                          return 'Mês/meses';
                                        } else if (_model
                                                .dropDownObjectiveSelectValue ==
                                            'Dormir melhor') {
                                          return 'Noites';
                                        } else {
                                          return 'Defina o período';
                                        }
                                      }(),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize:
                                                _model.dropDownTypePeriodValue !=
                                                            null &&
                                                        _model.dropDownTypePeriodValue !=
                                                            ''
                                                    ? 14.0
                                                    : 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      alignLabelWithHint: true,
                                      hintText: valueOrDefault<String>(
                                        '${_model.dropDownObjectiveSelectValue == 'Dormir melhor' ? 'Quantas ' : 'Quantos '}${() {
                                          if (_model.dropDownTypePeriodValue ==
                                              'Dia') {
                                            return 'dias?';
                                          } else if (_model
                                                  .dropDownTypePeriodValue ==
                                              'Mês') {
                                            return 'meses?';
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Dormir melhor') {
                                            return 'noites?';
                                          } else {
                                            return '';
                                          }
                                        }()}',
                                        'Defina o período',
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    minLines: 1,
                                    keyboardType: TextInputType.number,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    enableInteractiveSelection: true,
                                    validator: _model
                                        .objectivePeriodTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization.none),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(
                                width: valueOrDefault<double>(
                              _model.dropDownObjectiveSelectValue !=
                                      'Dormir melhor'
                                  ? 20.0
                                  : 0.0,
                              0.0,
                            ))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 13.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model
                                  .detailsObjectiveCreateUserTextController,
                              focusNode:
                                  _model.detailsObjectiveCreateUserFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.detailsObjectiveCreateUserTextController',
                                Duration(milliseconds: 100),
                                () => safeSetState(() {}),
                              ),
                              autofocus: false,
                              textInputAction: TextInputAction.done,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'ixe9lqe2' /* Detalhes (opcional) */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: Colors.transparent,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                              maxLines: 3,
                              minLines: 3,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              enableInteractiveSelection: true,
                              validator: _model
                                  .detailsObjectiveCreateUserTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: !((_model.dropDownObjectiveSelectValue != null &&
                                        _model.dropDownObjectiveSelectValue !=
                                            '') &&
                                    (_model.dropDownObjectiveSelectValue == 'Melhorar alimentação'
                                        ? ((_model.dropDownTypePeriodValue != null && _model.dropDownTypePeriodValue != '') &&
                                            (_model.objectivePeriodTextController.text !=
                                                    ''))
                                        : true) &&
                                    (_model.dropDownObjectiveSelectValue == 'Dormir melhor'
                                        ? (_model.objectivePeriodTextController.text !=
                                                '')
                                        : true) &&
                                    ((_model.dropDownObjectiveSelectValue != 'Dormir melhor') &&
                                            (_model.dropDownObjectiveSelectValue !=
                                                'Melhorar alimentação')
                                        ? ((_model.objectiveFinalTextController.text != '') &&
                                            (_model.dropDownTypePeriodValue != null &&
                                                _model.dropDownTypePeriodValue !=
                                                    '') &&
                                            (_model.objectivePeriodTextController.text != ''))
                                        : true))
                                ? null
                                : () async {
                                    _model.query2 =
                                        await queryPerformanceRecordOnce(
                                      queryBuilder: (performanceRecord) =>
                                          performanceRecord.where(
                                        'userID',
                                        isEqualTo: currentUserReference,
                                      ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    if (valueOrDefault<bool>(
                                            currentUserDocument
                                                ?.performanceStatus,
                                            false) ==
                                        false) {
                                      await PerformanceRecord.collection
                                          .doc()
                                          .set(createPerformanceRecordData(
                                            userID: currentUserReference,
                                            userChallengerPerformance: 0,
                                            userChallengerComplete: 0,
                                            totalAmount: 1,
                                            userObjectivePerformance: 1,
                                            createTime: getCurrentTimestamp,
                                          ));

                                      await currentUserReference!
                                          .update(createUserRecordData(
                                        performanceStatus: true,
                                      ));
                                    } else {
                                      await _model.query2!.reference.update({
                                        ...mapToFirestore(
                                          {
                                            'totalAmount':
                                                FieldValue.increment(1),
                                            'userObjectivePerformance':
                                                FieldValue.increment(1),
                                          },
                                        ),
                                      });
                                    }

                                    await UserObjectivesRecord.collection
                                        .doc()
                                        .set({
                                      ...createUserObjectivesRecordData(
                                        userID: currentUserUid,
                                        finalObjectives: () {
                                          if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Dormir melhor') {
                                            return double.tryParse(_model
                                                .objectivePeriodTextController
                                                .text);
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Melhorar alimentação') {
                                            return double.tryParse(_model
                                                .objectivePeriodTextController
                                                .text);
                                          } else {
                                            return double.tryParse(_model
                                                .objectiveFinalTextController
                                                .text);
                                          }
                                        }(),
                                        progressObjetive: 0.0,
                                        descriptionObjectives: _model
                                            .detailsObjectiveCreateUserTextController
                                            .text,
                                        dataPeriodObjective: int.tryParse(_model
                                            .objectivePeriodTextController
                                            .text),
                                        completed: false,
                                        documentObjectiveRef: _model
                                            .docReferenceOutput?.reference,
                                        userObjetiveRef: currentUserReference,
                                        typePeriod:
                                            _model.dropDownTypePeriodValue,
                                        typeObjective: () {
                                          if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Ganhar massa muscular') {
                                            return 'Kg';
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Caminhar') {
                                            return 'Km';
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Melhorar alimentação') {
                                            return (_model
                                                        .objectiveFinalTextController
                                                        .text ==
                                                    '1'
                                                ? 'Dia'
                                                : 'Dias');
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Dormir melhor') {
                                            return 'Noites';
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Perder peso') {
                                            return 'Kg';
                                          } else if (_model
                                                  .dropDownObjectiveSelectValue ==
                                              'Beber mais água') {
                                            return (_model
                                                        .objectiveFinalTextController
                                                        .text ==
                                                    '1'
                                                ? 'Litro'
                                                : 'Litros');
                                          } else {
                                            return '';
                                          }
                                        }(),
                                        docRef: random_data.randomString(
                                          20,
                                          20,
                                          true,
                                          true,
                                          false,
                                        ),
                                        progressPercent: 0.0,
                                        currentDistanceKm: 0.0,
                                        nameObjetive:
                                            _model.dropDownObjectiveSelectValue,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'startDate':
                                              FieldValue.serverTimestamp(),
                                        },
                                      ),
                                    });
                                    FFAppState().expandedIndex = -1;
                                    safeSetState(() {});
                                    _model.typeObjective = () {
                                      if (_model.dropDownObjectiveSelectValue ==
                                          'Melhorar alimentação') {
                                        return (_model
                                                    .objectivePeriodTextController
                                                    .text !=
                                                '1'
                                            ? 'dias'
                                            : 'dia');
                                      } else if (_model
                                              .dropDownObjectiveSelectValue ==
                                          'Ganhar massa muscular') {
                                        return 'kg';
                                      } else if (_model
                                              .dropDownObjectiveSelectValue ==
                                          'Perder peso') {
                                        return 'kg';
                                      } else if (_model
                                              .dropDownObjectiveSelectValue ==
                                          'Beber mais água') {
                                        return 'L';
                                      } else if (_model
                                              .dropDownObjectiveSelectValue ==
                                          'Caminhar') {
                                        return 'km';
                                      } else if (_model
                                              .dropDownObjectiveSelectValue ==
                                          'Dormir melhor') {
                                        return (_model
                                                    .objectivePeriodTextController
                                                    .text !=
                                                '1'
                                            ? 'dias'
                                            : 'dia');
                                      } else {
                                        return '';
                                      }
                                    }();
                                    safeSetState(() {});
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Objetivo criado com sucesso!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 1500),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    await Future.delayed(
                                      Duration(
                                        milliseconds: 1600,
                                      ),
                                    );

                                    context.pushNamed(
                                      ObjectivesWidget.routeName,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );

                                    safeSetState(() {});
                                  },
                            text: FFLocalizations.of(context).getText(
                              'cq9brbnm' /* Criar objetivo */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                              disabledColor: Color(0x64C79B66),
                              disabledTextColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
