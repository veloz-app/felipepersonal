import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/edit_tips_widget.dart';
import '/components/tips_create_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'tips_model.dart';
export 'tips_model.dart';

class TipsWidget extends StatefulWidget {
  const TipsWidget({super.key});

  static String routeName = 'tips';
  static String routePath = '/tips';

  @override
  State<TipsWidget> createState() => _TipsWidgetState();
}

class _TipsWidgetState extends State<TipsWidget> {
  late TipsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {});
    });
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
              'wei76zye' /* Dicas */,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 37.0, 18.0),
                child: AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.55,
                                child: TipsCreateWidget(),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Container(
                      width: 138.69,
                      height: 100.0,
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'y7lzkx9o' /* Postar dica */,
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(35.0, 0.0, 35.0, 0.0),
            child:
                PagedListView<DocumentSnapshot<Object?>?, TipsRecord>.separated(
              pagingController: _model.setListViewController(
                TipsRecord.collection
                    .orderBy('time_stampTips', descending: true),
              ),
              padding: EdgeInsets.zero,
              primary: false,
              reverse: false,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => SizedBox(width: 32.0),
              builderDelegate: PagedChildBuilderDelegate<TipsRecord>(
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
                  final listViewTipsRecord =
                      _model.listViewPagingController!.itemList![listViewIndex];
                  return Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 320.0,
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              children: [
                                Container(
                                  width: 320.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.61, 1.13),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Logotipo.png',
                                      width: 117.1,
                                      height: 99.6,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.72, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/foto_felipe@2x.png',
                                      width: 129.3,
                                      height: 150.2,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 320.0,
                          height: 355.24,
                          decoration: BoxDecoration(
                            color: Color(0x1357636C),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 10.0, 24.0, 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.star_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 38.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        listViewTipsRecord.displayNameTypes,
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
                                              fontSize: 15.0,
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
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Text(
                                        listViewTipsRecord.tipDetail,
                                        textAlign: TextAlign.justify,
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
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Container(
                                    height: 73.41,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        if (valueOrDefault(
                                                currentUserDocument?.userAdm,
                                                '') ==
                                            '1')
                                          AuthUserStreamWidget(
                                            builder: (context) => Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child: Container(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.55,
                                                              child:
                                                                  EditTipsWidget(
                                                                titleTips:
                                                                    listViewTipsRecord
                                                                        .displayNameTypes,
                                                                detailsTips:
                                                                    listViewTipsRecord
                                                                        .tipDetail,
                                                                tipsEditReference:
                                                                    listViewTipsRecord
                                                                        .reference,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons.solidEdit,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    var confirmDialogResponse =
                                                        await showDialog<bool>(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  content: Text(
                                                                      'Deseja excluir essa dica?'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                      child: Text(
                                                                          'Não'),
                                                                    ),
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                      child: Text(
                                                                          'Sim'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ) ??
                                                            false;
                                                    if (confirmDialogResponse) {
                                                      await listViewTipsRecord
                                                          .reference
                                                          .delete();
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Exclusão realizada com sucesso!',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              fontSize: 14.0,
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
                                                      await Future.delayed(
                                                        Duration(
                                                          milliseconds: 1500,
                                                        ),
                                                      );

                                                      context.goNamed(
                                                          TipsWidget.routeName);

                                                      return;
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons.trash,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    size: 23.0,
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 14.0)),
                                            ),
                                          ),
                                        Flexible(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: ClipRRect(
                                              child: Container(
                                                width: 100.3,
                                                decoration: BoxDecoration(),
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              final likedTipsElement =
                                                                  currentUserReference;
                                                              final likedTipsUpdate = listViewTipsRecord
                                                                      .likedTips
                                                                      .contains(
                                                                          likedTipsElement)
                                                                  ? FieldValue
                                                                      .arrayRemove([
                                                                      likedTipsElement
                                                                    ])
                                                                  : FieldValue
                                                                      .arrayUnion([
                                                                      likedTipsElement
                                                                    ]);
                                                              await listViewTipsRecord
                                                                  .reference
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'liked_tips':
                                                                        likedTipsUpdate,
                                                                  },
                                                                ),
                                                              });
                                                              if (listViewTipsRecord
                                                                      .likedTips
                                                                      .contains(
                                                                          currentUserReference) ==
                                                                  true) {
                                                                await listViewTipsRecord
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'likeCountTips':
                                                                          FieldValue.increment(
                                                                              -1),
                                                                    },
                                                                  ),
                                                                });

                                                                await listViewTipsRecord
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'liked_tips':
                                                                          FieldValue
                                                                              .delete(),
                                                                    },
                                                                  ),
                                                                });
                                                              } else {
                                                                await listViewTipsRecord
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'likeCountTips':
                                                                          FieldValue.increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });

                                                                await listViewTipsRecord
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'liked_tips':
                                                                          FieldValue
                                                                              .arrayUnion([
                                                                        currentUserReference
                                                                      ]),
                                                                    },
                                                                  ),
                                                                });
                                                              }
                                                            },
                                                            value: listViewTipsRecord
                                                                .likedTips
                                                                .contains(
                                                                    currentUserReference),
                                                            onIcon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .solidThumbsUp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            offIcon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .thumbsUp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          if (listViewTipsRecord
                                                                  .likeCountTips >=
                                                              1)
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewTipsRecord
                                                                    .likeCountTips
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .montserrat(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              final lovedTipsElement =
                                                                  currentUserReference;
                                                              final lovedTipsUpdate = listViewTipsRecord
                                                                      .lovedTips
                                                                      .contains(
                                                                          lovedTipsElement)
                                                                  ? FieldValue
                                                                      .arrayRemove([
                                                                      lovedTipsElement
                                                                    ])
                                                                  : FieldValue
                                                                      .arrayUnion([
                                                                      lovedTipsElement
                                                                    ]);
                                                              await listViewTipsRecord
                                                                  .reference
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'loved_tips':
                                                                        lovedTipsUpdate,
                                                                  },
                                                                ),
                                                              });
                                                              if (listViewTipsRecord
                                                                      .lovedTips
                                                                      .contains(
                                                                          currentUserReference) ==
                                                                  true) {
                                                                await listViewTipsRecord
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'loveCountTips':
                                                                          FieldValue.increment(
                                                                              -1),
                                                                    },
                                                                  ),
                                                                });

                                                                await listViewTipsRecord
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'loved_tips':
                                                                          FieldValue
                                                                              .delete(),
                                                                    },
                                                                  ),
                                                                });
                                                              } else {
                                                                await listViewTipsRecord
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'loveCountTips':
                                                                          FieldValue.increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });

                                                                await listViewTipsRecord
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'loved_tips':
                                                                          FieldValue
                                                                              .arrayUnion([
                                                                        currentUserReference
                                                                      ]),
                                                                    },
                                                                  ),
                                                                });
                                                              }
                                                            },
                                                            value: listViewTipsRecord
                                                                .lovedTips
                                                                .contains(
                                                                    currentUserReference),
                                                            onIcon: Icon(
                                                              Icons
                                                                  .favorite_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            offIcon: Icon(
                                                              Icons
                                                                  .favorite_border,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          if (listViewTipsRecord
                                                                  .loveCountTips >=
                                                              1)
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewTipsRecord
                                                                    .loveCountTips
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .montserrat(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 2.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 14.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
