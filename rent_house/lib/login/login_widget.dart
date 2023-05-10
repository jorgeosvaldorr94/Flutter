import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    _model.nameCreateController ??= TextEditingController();
    _model.emailAddressCreateController ??= TextEditingController();
    _model.passwordCreateController ??= TextEditingController();
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
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: Text(
                    'Cuban Rent House',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 30.0,
                        ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Image.asset(
                      'assets/images/Logo_Rent_House.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor:
                                FlutterFlowTheme.of(context).primaryText,
                            unselectedLabelColor: Color(0xFF7C7675),
                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 15.0, 24.0, 0.0),
                            labelStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.normal,
                              fontSize: 24.0,
                            ),
                            indicatorColor: Color(0xFF262D34),
                            tabs: [
                              Tab(
                                text: 'Sign In',
                              ),
                              Tab(
                                text: 'Sign Up',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 14.0, 20.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.emailAddressController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.emailAddressController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Your Email',
                                        labelStyle: TextStyle(
                                          color: Color(0xFF0F1113),
                                          fontSize: 20.0,
                                        ),
                                        hintStyle: GoogleFonts.getFont(
                                          'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          fontSize: 20.0,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF262D34),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x00FFFFFF),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10.0, 0.0, 20.0, 0.0),
                                        suffixIcon: _model
                                                .emailAddressController!
                                                .text
                                                .isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model.emailAddressController
                                                      ?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: Color(0xFF262D34),
                                                  size: 20.0,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        color: Color(0xFF0F1113),
                                        fontSize: 20.0,
                                      ),
                                      textAlign: TextAlign.start,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: _model
                                          .emailAddressControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.passwordController,
                                      autofocus: true,
                                      obscureText: !_model.passwordVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Your Password',
                                        labelStyle: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .black600,
                                          fontSize: 20.0,
                                        ),
                                        hintStyle: GoogleFonts.getFont(
                                          'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          fontSize: 20.0,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF262D34),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x00FFFFFF),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10.0, 0.0, 20.0, 0.0),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model.passwordVisibility =
                                                !_model.passwordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF262D34),
                                            size: 20.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF0F1113),
                                            fontSize: 20.0,
                                          ),
                                      validator: _model
                                          .passwordControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 14.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                GoRouter.of(context)
                                                    .prepareAuthEvent();

                                                final user = await authManager
                                                    .signInWithEmail(
                                                  context,
                                                  _model.emailAddressController
                                                      .text,
                                                  _model
                                                      .passwordController.text,
                                                );
                                                if (user == null) {
                                                  return;
                                                }

                                                context.goNamedAuth(
                                                    'Home', mounted);
                                              },
                                              text: 'Sign In',
                                              options: FFButtonOptions(
                                                width: 230.0,
                                                height: 45.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF262D34),
                                                textStyle: GoogleFonts.getFont(
                                                  'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 20.0,
                                                ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 14.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context
                                                  .pushNamed('RecoverPassword');
                                            },
                                            child: Text(
                                              'forgot password ?',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.getFont(
                                                'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                fontSize: 18.0,
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
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 14.0, 20.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.nameCreateController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.nameCreateController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Your Name',
                                        labelStyle: GoogleFonts.getFont(
                                          'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF262D34),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x07FFFFFF),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10.0, 0.0, 20.0, 0.0),
                                        suffixIcon: _model.nameCreateController!
                                                .text.isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model.nameCreateController
                                                      ?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 20.0,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                      ),
                                      validator: _model
                                          .nameCreateControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 0.0),
                                    child: TextFormField(
                                      controller:
                                          _model.emailAddressCreateController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.emailAddressCreateController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Your Email',
                                        labelStyle: GoogleFonts.getFont(
                                          'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
                                        ),
                                        hintStyle: GoogleFonts.getFont(
                                          'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF262D34),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x01FFFFFF),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10.0, 0.0, 20.0, 0.0),
                                        suffixIcon: _model
                                                .emailAddressCreateController!
                                                .text
                                                .isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model
                                                      .emailAddressCreateController
                                                      ?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 20.0,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      validator: _model
                                          .emailAddressCreateControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 0.0),
                                    child: TextFormField(
                                      controller:
                                          _model.passwordCreateController,
                                      autofocus: true,
                                      obscureText:
                                          !_model.passwordCreateVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Your Password',
                                        labelStyle: GoogleFonts.getFont(
                                          'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
                                        ),
                                        hintStyle: GoogleFonts.getFont(
                                          'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF262D34),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x00FFFFFF),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10.0, 0.0, 20.0, 0.0),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model
                                                    .passwordCreateVisibility =
                                                !_model
                                                    .passwordCreateVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordCreateVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 20.0,
                                          ),
                                        ),
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                      ),
                                      validator: _model
                                          .passwordCreateControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 52.0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button-Login pressed ...');
                                            },
                                            text: 'Create Account',
                                            options: FFButtonOptions(
                                              width: 230.0,
                                              height: 45.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              textStyle: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 20.0,
                                              ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
