import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/alternative_video_details_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'alternative_training_model.dart';
export 'alternative_training_model.dart';

class AlternativeTrainingWidget extends StatefulWidget {
  const AlternativeTrainingWidget({super.key});

  static String routeName = 'alternativeTraining';
  static String routePath = '/alternativeTraining';

  @override
  State<AlternativeTrainingWidget> createState() =>
      _AlternativeTrainingWidgetState();
}

class _AlternativeTrainingWidgetState extends State<AlternativeTrainingWidget> {
  late AlternativeTrainingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlternativeTrainingModel());
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
              'ryd5vvtx' /* Treino alternativo */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 17.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [
            Visibility(
              visible: valueOrDefault(currentUserDocument?.userAdm, '') == '1',
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 21.0, 18.0),
                child: AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context
                          .pushNamed(PostAlternativeTrainingWidget.routeName);
                    },
                    child: Container(
                      width: 122.47,
                      height: 85.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).secondary,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '58nq880l' /* Postar */,
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
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Icon(
                              Icons.add_box,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 29.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: PagedListView<DocumentSnapshot<Object?>?,
                      AlternativeTrainingRecord>(
                    pagingController: _model.setListViewController(
                      AlternativeTrainingRecord.collection
                          .orderBy('timeStamp_training', descending: true),
                    ),
                    padding: EdgeInsets.zero,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    builderDelegate:
                        PagedChildBuilderDelegate<AlternativeTrainingRecord>(
                      // Customize what your widget looks like when it's loading the first page.
                      firstPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      ),
                      // Customize what your widget looks like when it's loading another page.
                      newPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      ),

                      itemBuilder: (context, _, listViewIndex) {
                        final listViewAlternativeTrainingRecord = _model
                            .listViewPagingController!.itemList![listViewIndex];
                        return Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                40.0, 25.0, 40.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        listViewAlternativeTrainingRecord
                                            .displayNameTraining,
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
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Text(
                                        listViewAlternativeTrainingRecord
                                            .description,
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
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 11.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.55,
                                                          child:
                                                              AlternativeVideoDetailsWidget(
                                                            titleAlternativeVideo:
                                                                listViewAlternativeTrainingRecord
                                                                    .displayNameTraining,
                                                            subTitleAlternativeVideo:
                                                                listViewAlternativeTrainingRecord
                                                                    .description,
                                                            moreDetailsAlterantiveVideo:
                                                                listViewAlternativeTrainingRecord
                                                                    .moreDetails,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '96hh478u' /* Mais detalhes */,
                                              ),
                                              icon: Icon(
                                                Icons.chevron_right_sharp,
                                                size: 15.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 144.0,
                                                height: 27.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconAlignment:
                                                    IconAlignment.end,
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          fontSize: 6.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.userAdm,
                                                    '') ==
                                                '1')
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) => Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      FlutterFlowIconButton(
                                                        borderRadius: 8.0,
                                                        buttonSize: 42.0,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons.edit,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                            EditAlternativeTrainingWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'editTitleAlternativeTraining':
                                                                  serializeParam(
                                                                listViewAlternativeTrainingRecord
                                                                    .displayNameTraining,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'editSubtitleAlternativeTraining':
                                                                  serializeParam(
                                                                listViewAlternativeTrainingRecord
                                                                    .description,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'editDetailsAlternativeTraining':
                                                                  serializeParam(
                                                                listViewAlternativeTrainingRecord
                                                                    .moreDetails,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'editVideoAlternativeTraining':
                                                                  serializeParam(
                                                                listViewAlternativeTrainingRecord
                                                                    .videoUrl,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'referenceAlternativeTraining':
                                                                  serializeParam(
                                                                listViewAlternativeTrainingRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderRadius: 8.0,
                                                        buttonSize: 42.0,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons
                                                              .trash,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          var confirmDialogResponse =
                                                              await showDialog<
                                                                      bool>(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        content:
                                                                            Text('Deseja deletar o video'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext, false),
                                                                            child:
                                                                                Text('Não'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext, true),
                                                                            child:
                                                                                Text('Sim'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  ) ??
                                                                  false;
                                                          if (confirmDialogResponse) {
                                                            await listViewAlternativeTrainingRecord
                                                                .reference
                                                                .delete();
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Exclusão realizada com sucesso!',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        1400),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                              ),
                                                            );
                                                            await Future
                                                                .delayed(
                                                              Duration(
                                                                milliseconds:
                                                                    1500,
                                                              ),
                                                            );

                                                            context.goNamed(
                                                                AlternativeTrainingWidget
                                                                    .routeName);
                                                          } else {
                                                            return;
                                                          }
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Container(
                                      width: 290.0,
                                      height: 520.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: 290.0,
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          children: [
                                            FlutterFlowVideoPlayer(
                                              path:
                                                  'https://firebasestorage.googleapis.com/v0/b/felipe-personal-3b85a.firebasestorage.app/o/V%C3%ADdeo%201.mp4?alt=media&token=15a746f3-9f3a-4137-8673-ae9876edae3b',
                                              videoType: VideoType.network,
                                              width: 290.0,
                                              height: double.infinity,
                                              autoPlay: false,
                                              looping: true,
                                              showControls: true,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 136.3,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.transparent,
                                                      Color(0xD3000000)
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.0, -1.0),
                                                    end: AlignmentDirectional(
                                                        0, 1.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.95, 0.65),
                                              child: ToggleIcon(
                                                onPressed: () async {
                                                  final likedByElement =
                                                      currentUserReference;
                                                  final likedByUpdate =
                                                      listViewAlternativeTrainingRecord
                                                              .likedBy
                                                              .contains(
                                                                  likedByElement)
                                                          ? FieldValue
                                                              .arrayRemove([
                                                              likedByElement
                                                            ])
                                                          : FieldValue
                                                              .arrayUnion([
                                                              likedByElement
                                                            ]);
                                                  await listViewAlternativeTrainingRecord
                                                      .reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'liked_by':
                                                            likedByUpdate,
                                                      },
                                                    ),
                                                  });
                                                  if (listViewAlternativeTrainingRecord
                                                          .likedBy
                                                          .contains(
                                                              currentUserReference) ==
                                                      true) {
                                                    await listViewAlternativeTrainingRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'likeCountVideo':
                                                              FieldValue
                                                                  .increment(
                                                                      -1),
                                                        },
                                                      ),
                                                    });

                                                    await listViewAlternativeTrainingRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'liked_by': FieldValue
                                                              .delete(),
                                                        },
                                                      ),
                                                    });
                                                  } else {
                                                    await listViewAlternativeTrainingRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'likeCountVideo':
                                                              FieldValue
                                                                  .increment(1),
                                                        },
                                                      ),
                                                    });

                                                    await listViewAlternativeTrainingRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'liked_by': FieldValue
                                                              .arrayUnion([
                                                            currentUserReference
                                                          ]),
                                                        },
                                                      ),
                                                    });
                                                  }
                                                },
                                                value:
                                                    listViewAlternativeTrainingRecord
                                                        .likedBy
                                                        .contains(
                                                            currentUserReference),
                                                onIcon: FaIcon(
                                                  FontAwesomeIcons
                                                      .solidThumbsUp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 24.0,
                                                ),
                                                offIcon: FaIcon(
                                                  FontAwesomeIcons.thumbsUp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 22.0,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.94, 0.9),
                                              child: ToggleIcon(
                                                onPressed: () async {
                                                  final lovedByElement =
                                                      currentUserReference;
                                                  final lovedByUpdate =
                                                      listViewAlternativeTrainingRecord
                                                              .lovedBy
                                                              .contains(
                                                                  lovedByElement)
                                                          ? FieldValue
                                                              .arrayRemove([
                                                              lovedByElement
                                                            ])
                                                          : FieldValue
                                                              .arrayUnion([
                                                              lovedByElement
                                                            ]);
                                                  await listViewAlternativeTrainingRecord
                                                      .reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'loved_by':
                                                            lovedByUpdate,
                                                      },
                                                    ),
                                                  });
                                                  if (listViewAlternativeTrainingRecord
                                                          .lovedBy
                                                          .contains(
                                                              currentUserReference) ==
                                                      true) {
                                                    await listViewAlternativeTrainingRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'loveCountVideo':
                                                              FieldValue
                                                                  .increment(
                                                                      -1),
                                                        },
                                                      ),
                                                    });

                                                    await listViewAlternativeTrainingRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'loved_by': FieldValue
                                                              .delete(),
                                                        },
                                                      ),
                                                    });
                                                  } else {
                                                    await listViewAlternativeTrainingRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'loveCountVideo':
                                                              FieldValue
                                                                  .increment(1),
                                                        },
                                                      ),
                                                    });

                                                    await listViewAlternativeTrainingRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'loved_by': FieldValue
                                                              .arrayUnion([
                                                            currentUserReference
                                                          ]),
                                                        },
                                                      ),
                                                    });
                                                  }
                                                },
                                                value:
                                                    listViewAlternativeTrainingRecord
                                                        .lovedBy
                                                        .contains(
                                                            currentUserReference),
                                                onIcon: Icon(
                                                  Icons.favorite_sharp,
                                                  color: Colors.white,
                                                  size: 24.0,
                                                ),
                                                offIcon: Icon(
                                                  Icons.favorite_border,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                            if (listViewAlternativeTrainingRecord
                                                    .loveCountVideo >=
                                                1)
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.83, 0.94),
                                                child: Text(
                                                  listViewAlternativeTrainingRecord
                                                      .loveCountVideo
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .montserrat(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            if (listViewAlternativeTrainingRecord
                                                    .likeCountVideo >=
                                                1)
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.84, 0.74),
                                                child: Text(
                                                  listViewAlternativeTrainingRecord
                                                      .likeCountVideo
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .montserrat(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                ),
                              ],
                            ),
                          ),
                        );
                      },
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
