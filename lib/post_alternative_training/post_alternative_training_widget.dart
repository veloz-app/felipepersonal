import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'post_alternative_training_model.dart';
export 'post_alternative_training_model.dart';

class PostAlternativeTrainingWidget extends StatefulWidget {
  const PostAlternativeTrainingWidget({super.key});

  static String routeName = 'postAlternativeTraining';
  static String routePath = '/postAlternativeTraining';

  @override
  State<PostAlternativeTrainingWidget> createState() =>
      _PostAlternativeTrainingWidgetState();
}

class _PostAlternativeTrainingWidgetState
    extends State<PostAlternativeTrainingWidget> {
  late PostAlternativeTrainingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostAlternativeTrainingModel());

    _model.titleVideoCreateTextController ??= TextEditingController();
    _model.titleVideoCreateFocusNode ??= FocusNode();

    _model.subtitleVideoCreateTextController ??= TextEditingController();
    _model.subtitleVideoCreateFocusNode ??= FocusNode();

    _model.detailVideoCreateTextController ??= TextEditingController();
    _model.detailVideoCreateFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'a04qbdm0' /* Postar vídeo de desafio */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.titleVideoCreateTextController,
                      focusNode: _model.titleVideoCreateFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.titleVideoCreateTextController',
                        Duration(milliseconds: 100),
                        () => safeSetState(() {}),
                      ),
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
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
                          'm1npgrfp' /* Título */,
                        ),
                        hintStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              font: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).tertiary,
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
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      enableInteractiveSelection: true,
                      validator: _model.titleVideoCreateTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.subtitleVideoCreateTextController,
                        focusNode: _model.subtitleVideoCreateFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.subtitleVideoCreateTextController',
                          Duration(milliseconds: 100),
                          () => safeSetState(() {}),
                        ),
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
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
                            'fumk1ja3' /* Subtítulo */,
                          ),
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                font: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).tertiary,
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
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        enableInteractiveSelection: true,
                        validator: _model
                            .subtitleVideoCreateTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<int>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<int>(null),
                      options: List<int>.from([
                        86400000,
                        172800000,
                        259200000,
                        345600000,
                        432000000,
                        604800000,
                        1209600000,
                        1814400000,
                        2592000000,
                        5184000000,
                        7776000000
                      ]),
                      optionLabels: [
                        FFLocalizations.of(context).getText(
                          '3agl3nqp' /* 1 dia */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ny6vfv3w' /* 2 dias */,
                        ),
                        FFLocalizations.of(context).getText(
                          'u7hkezka' /* 3 dias */,
                        ),
                        FFLocalizations.of(context).getText(
                          't2n4sw8d' /* 4 dias */,
                        ),
                        FFLocalizations.of(context).getText(
                          'l1h45rv5' /* 5 dias */,
                        ),
                        FFLocalizations.of(context).getText(
                          'hljdamgg' /* 1 semana */,
                        ),
                        FFLocalizations.of(context).getText(
                          'm2c5qa5h' /* 2 semanas */,
                        ),
                        FFLocalizations.of(context).getText(
                          'wofvyy6d' /* 3 semanas */,
                        ),
                        FFLocalizations.of(context).getText(
                          'x4q9ajeh' /* 1 mês */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ryk49bps' /* 2 meses */,
                        ),
                        FFLocalizations.of(context).getText(
                          '6indgnmh' /* 3 meses */,
                        )
                      ],
                      onChanged: (val) async {
                        safeSetState(() => _model.dropDownValue = val);
                        _model.durationAdmMs = _model.dropDownValue;
                        safeSetState(() {});
                      },
                      width: double.infinity,
                      height: 40.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                font: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                      hintText: FFLocalizations.of(context).getText(
                        'lb4sgpfm' /* Selecione o período */,
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).primaryText,
                      borderWidth: 1.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.detailVideoCreateTextController,
                        focusNode: _model.detailVideoCreateFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.detailVideoCreateTextController',
                          Duration(milliseconds: 100),
                          () => safeSetState(() {}),
                        ),
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
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
                            'pk3ugkyv' /* Detalhes */,
                          ),
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                font: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).tertiary,
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
                        maxLines: 3,
                        minLines: 3,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        enableInteractiveSelection: true,
                        validator: _model
                            .detailVideoCreateTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              allowPhoto: false,
                              allowVideo: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              safeSetState(() => _model
                                      .isDataUploading_uploadAlternativeVideo =
                                  true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              var downloadUrls = <String>[];
                              try {
                                selectedUploadedFiles = selectedMedia
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                          height: m.dimensions?.height,
                                          width: m.dimensions?.width,
                                          blurHash: m.blurHash,
                                        ))
                                    .toList();

                                downloadUrls = (await Future.wait(
                                  selectedMedia.map(
                                    (m) async => await uploadData(
                                        m.storagePath, m.bytes),
                                  ),
                                ))
                                    .where((u) => u != null)
                                    .map((u) => u!)
                                    .toList();
                              } finally {
                                _model.isDataUploading_uploadAlternativeVideo =
                                    false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedMedia.length &&
                                  downloadUrls.length == selectedMedia.length) {
                                safeSetState(() {
                                  _model.uploadedLocalFile_uploadAlternativeVideo =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl_uploadAlternativeVideo =
                                      downloadUrls.first;
                                });
                              } else {
                                safeSetState(() {});
                                return;
                              }
                            }

                            _model.confirmVIdeoUpdate = true;
                            safeSetState(() {});
                            return;
                                                    },
                          child: Container(
                            width: 116.3,
                            height: 116.3,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '9965jdsf' /* Adicionar
um vídeo */
                                      ,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 9.0),
                                  child: Icon(
                                    Icons.file_upload_outlined,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 45.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 6.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '84cz7ofc' /* Capa do vídeo */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 6.0,
                                      color: Color(0xFF0D0808),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    width: 0.5,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      maxWidth: 1080.00,
                                      maxHeight: 1920.00,
                                      imageQuality: 23,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      safeSetState(() => _model
                                              .isDataUploading_uploadImageCOverNotification =
                                          true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      var downloadUrls = <String>[];
                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();

                                        downloadUrls = (await Future.wait(
                                          selectedMedia.map(
                                            (m) async => await uploadData(
                                                m.storagePath, m.bytes),
                                          ),
                                        ))
                                            .where((u) => u != null)
                                            .map((u) => u!)
                                            .toList();
                                      } finally {
                                        _model.isDataUploading_uploadImageCOverNotification =
                                            false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        safeSetState(() {
                                          _model.uploadedLocalFile_uploadImageCOverNotification =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl_uploadImageCOverNotification =
                                              downloadUrls.first;
                                        });
                                      } else {
                                        safeSetState(() {});
                                        return;
                                      }
                                    }

                                    _model.confirmImageCoverUpdate = true;
                                    safeSetState(() {});
                                    return;
                                                                    },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      _model.uploadedFileUrl_uploadImageCOverNotification !=
                                                  ''
                                          ? _model
                                              .uploadedFileUrl_uploadImageCOverNotification
                                          : 'https://firebasestorage.googleapis.com/v0/b/felipe-personal-3b85a.firebasestorage.app/o/app%2Fupload.png?alt=media&token=4767648c-101e-48f9-8cfd-0d2068e5b4f1',
                                      width: 92.5,
                                      height: 149.8,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: !((_model.titleVideoCreateTextController
                                            .text !=
                                        '') &&
                                (_model.detailVideoCreateTextController
                                            .text !=
                                        '') &&
                                (_model.confirmVIdeoUpdate == true) &&
                                (_model.confirmImageCoverUpdate == true) &&
                                (_model.dropDownValue != null))
                            ? null
                            : () async {
                                _model.confirmVIdeoUpdate = false;
                                _model.confirmImageCoverUpdate = false;
                                safeSetState(() {});

                                await currentUserReference!.update({
                                  ...mapToFirestore(
                                    {
                                      'notificationCount':
                                          FieldValue.increment(1),
                                    },
                                  ),
                                });

                                var alternativeTrainingRecordReference =
                                    AlternativeTrainingRecord.collection.doc();
                                await alternativeTrainingRecordReference.set({
                                  ...createAlternativeTrainingRecordData(
                                    displayNameTraining: _model
                                        .titleVideoCreateTextController.text,
                                    description: _model
                                        .subtitleVideoCreateTextController.text,
                                    moreDetails: _model
                                        .detailVideoCreateTextController.text,
                                    videoUrl: _model
                                        .uploadedFileUrl_uploadAlternativeVideo,
                                    likeCountVideo: 0,
                                    loveCountVideo: 0,
                                    challengerStartDate: getCurrentTimestamp,
                                    chellengerStatus: true,
                                    durationMs: _model.dropDownValue,
                                    chellengerEndDate:
                                        functions.calculateDeadline(
                                            _model.durationAdmMs),
                                    refChallengerTotal: currentUserReference,
                                    durationTotal: () {
                                      if (_model.dropDownValue == 86400000) {
                                        return '1 dia';
                                      } else if (_model.dropDownValue ==
                                          172800000) {
                                        return '2 dias';
                                      } else if (_model.dropDownValue ==
                                          259200000) {
                                        return '3 dias';
                                      } else if (_model.dropDownValue ==
                                          345600000) {
                                        return '4 dias';
                                      } else if (_model.dropDownValue ==
                                          432000000) {
                                        return '5 dias';
                                      } else if (_model.dropDownValue ==
                                          604800000) {
                                        return '1 semana';
                                      } else {
                                        return '1 hora';
                                      }
                                    }(),
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'timeStamp_training':
                                          FieldValue.serverTimestamp(),
                                    },
                                  ),
                                });
                                _model.referenceVideo =
                                    AlternativeTrainingRecord
                                        .getDocumentFromData({
                                  ...createAlternativeTrainingRecordData(
                                    displayNameTraining: _model
                                        .titleVideoCreateTextController.text,
                                    description: _model
                                        .subtitleVideoCreateTextController.text,
                                    moreDetails: _model
                                        .detailVideoCreateTextController.text,
                                    videoUrl: _model
                                        .uploadedFileUrl_uploadAlternativeVideo,
                                    likeCountVideo: 0,
                                    loveCountVideo: 0,
                                    challengerStartDate: getCurrentTimestamp,
                                    chellengerStatus: true,
                                    durationMs: _model.dropDownValue,
                                    chellengerEndDate:
                                        functions.calculateDeadline(
                                            _model.durationAdmMs),
                                    refChallengerTotal: currentUserReference,
                                    durationTotal: () {
                                      if (_model.dropDownValue == 86400000) {
                                        return '1 dia';
                                      } else if (_model.dropDownValue ==
                                          172800000) {
                                        return '2 dias';
                                      } else if (_model.dropDownValue ==
                                          259200000) {
                                        return '3 dias';
                                      } else if (_model.dropDownValue ==
                                          345600000) {
                                        return '4 dias';
                                      } else if (_model.dropDownValue ==
                                          432000000) {
                                        return '5 dias';
                                      } else if (_model.dropDownValue ==
                                          604800000) {
                                        return '1 semana';
                                      } else {
                                        return '1 hora';
                                      }
                                    }(),
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'timeStamp_training': DateTime.now(),
                                    },
                                  ),
                                }, alternativeTrainingRecordReference);

                                await NotificationRecord.collection.doc().set({
                                  ...createNotificationRecordData(
                                    notificationType: 'publicou um desafio',
                                    idNotification: '',
                                    imageCoverUrl: _model
                                        .uploadedFileUrl_uploadImageCOverNotification,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'timeStamp_notification':
                                          FieldValue.serverTimestamp(),
                                    },
                                  ),
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Desafio postado com sucesso',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 1500),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                );
                                await Future.delayed(
                                  Duration(
                                    milliseconds: 1600,
                                  ),
                                );

                                context.pushNamed(
                                    AlternativeTrainingWidget.routeName);

                                safeSetState(() {});
                              },
                        text: FFLocalizations.of(context).getText(
                          'bxhrgrjl' /* Postar desafio */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).secondary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                          disabledColor: Color(0x6AC79B66),
                          disabledTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
