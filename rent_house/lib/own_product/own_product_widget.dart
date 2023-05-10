import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'own_product_model.dart';
export 'own_product_model.dart';

class OwnProductWidget extends StatefulWidget {
  const OwnProductWidget({Key? key}) : super(key: key);

  @override
  _OwnProductWidgetState createState() => _OwnProductWidgetState();
}

class _OwnProductWidgetState extends State<OwnProductWidget>
    with TickerProviderStateMixin {
  late OwnProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OwnProductModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                height: 700.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.05, -1.0),
                      child: Image.asset(
                        'assets/images/backgroud.png',
                        width: double.infinity,
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: Color(0x8D090F13),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 40.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _model.textController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray600,
                                              fontSize: 14.0,
                                            ),
                                        hintText: 'Search...',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray600,
                                              fontSize: 14.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x6EFFFFFF),
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: FlutterFlowTheme.of(context)
                                              .gray600,
                                          size: 16.0,
                                        ),
                                        suffixIcon: _model
                                                .textController!.text.isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model.textController
                                                      ?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .gray600,
                                                  size: 22.0,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 12.0,
                                          ),
                                      maxLines: null,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 25.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('MyProfile');
                                    },
                                    child: FaIcon(
                                      FontAwesomeIcons.angleDoubleLeft,
                                      color:
                                          FlutterFlowTheme.of(context).gray200,
                                      size: 40.0,
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('Home');
                                    },
                                    child: Icon(
                                      Icons.house,
                                      color:
                                          FlutterFlowTheme.of(context).gray200,
                                      size: 40.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 700.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child:
                                              StreamBuilder<List<HouseRecord>>(
                                            stream: queryHouseRecord(
                                              queryBuilder: (houseRecord) =>
                                                  houseRecord.where(
                                                      'created_by',
                                                      isEqualTo:
                                                          currentUserUid),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitCubeGrid(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<HouseRecord>
                                                  verticalListHouseRecordList =
                                                  snapshot.data!;
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    verticalListHouseRecordList
                                                        .length,
                                                itemBuilder: (context,
                                                    verticalListIndex) {
                                                  final verticalListHouseRecord =
                                                      verticalListHouseRecordList[
                                                          verticalListIndex];
                                                  return Visibility(
                                                    visible: functions.showSearchResult(
                                                            _model
                                                                .textController
                                                                .text,
                                                            verticalListHouseRecord
                                                                .name!,
                                                            verticalListHouseRecord
                                                                .city!,
                                                            verticalListHouseRecord
                                                                .municipality!,
                                                            verticalListHouseRecord
                                                                .locality!,
                                                            verticalListHouseRecord
                                                                .price!) ??
                                                        true,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  8.0,
                                                                  16.0,
                                                                  8.0),
                                                      child: Container(
                                                        width: 270.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 8.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              offset: Offset(
                                                                  0.0, 4.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Hero(
                                                                    tag: verticalListHouseRecord
                                                                        .image!,
                                                                    transitionOnUserGestures:
                                                                        true,
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      child: Image
                                                                          .network(
                                                                        verticalListHouseRecord
                                                                            .image!,
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            150.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(
                                                                                  'EditProduct',
                                                                                  queryParams: {
                                                                                    'itemEditProduct': serializeParam(
                                                                                      verticalListHouseRecord,
                                                                                      ParamType.Document,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    'itemEditProduct': verticalListHouseRecord,
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: FaIcon(
                                                                                FontAwesomeIcons.edit,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 30.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                20.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return AlertDialog(
                                                                                          title: Text('Delete House ?'),
                                                                                          content: Text('Are you shure ?'),
                                                                                          actions: [
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                              child: Text('Cancel'),
                                                                                            ),
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                              child: Text('Confirm'),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ) ??
                                                                                    false;
                                                                                if (confirmDialogResponse) {
                                                                                  await verticalListHouseRecord.reference.delete();
                                                                                }
                                                                              },
                                                                              child: Icon(
                                                                                Icons.delete_forever_sharp,
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              2.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                28.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                              child: Text(
                                                                                formatNumber(
                                                                                  verticalListHouseRecord.price!,
                                                                                  formatType: FormatType.custom,
                                                                                  format: '\$ 0 USD',
                                                                                  locale: '',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: 10.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              2.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            verticalListHouseRecord.city!,
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            2.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          verticalListHouseRecord
                                                                              .municipality!,
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              2.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            verticalListHouseRecord.locality!,
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    verticalListHouseRecord
                                                                        .name!,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              14.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          2.0),
                                                                  child: Text(
                                                                    verticalListHouseRecord
                                                                        .createdAt!
                                                                        .toString(),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontSize:
                                                                              10.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
