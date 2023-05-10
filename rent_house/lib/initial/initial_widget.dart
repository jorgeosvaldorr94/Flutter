import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'initial_model.dart';
export 'initial_model.dart';

class InitialWidget extends StatefulWidget {
  const InitialWidget({Key? key}) : super(key: key);

  @override
  _InitialWidgetState createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<InitialWidget>
    with TickerProviderStateMixin {
  late InitialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(3.0, 3.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.6, 0.6),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 350.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 350.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 350.ms,
          duration: 400.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 400.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 400.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: Offset(0.6, 0.6),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: Offset(0.6, 0.6),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 500.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).primary,
                      FlutterFlowTheme.of(context).error,
                      FlutterFlowTheme.of(context).accent2
                    ],
                    stops: [0.0, 0.5, 1.0],
                    begin: AlignmentDirectional(-1.0, -1.0),
                    end: AlignmentDirectional(1.0, 1.0),
                  ),
                ),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0x00FFFFFF),
                        FlutterFlowTheme.of(context).secondaryBackground
                      ],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                        child: Container(
                          width: 180.0,
                          height: 180.0,
                          decoration: BoxDecoration(
                            color: Color(0x3E3A5FFF),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Image.asset(
                              'assets/images/Logo_Rent_House.png',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                      Text(
                        'Welcome!',
                        style: FlutterFlowTheme.of(context).displaySmall,
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            44.0, 8.0, 44.0, 0.0),
                        child: Text(
                          'We invite you to explore everything that our platform has to offer. If you wish to enjoy all the features we have prepared for you, we recommend that you create a user account. This way, you will be able to create your own posts, like other people\'s publications, and add content to your favorites.\n\nIf you prefer not to create an account, don\'t worry. You can still access the app as a guest and explore all the content you want. Have fun exploring!',
                          textAlign: TextAlign.justify,
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 20.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('SignUp');
                                  },
                                  text: 'Create Account',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 52.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 50.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('Home');
                                  },
                                  text: 'Continue as a guest',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 52.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).gray600,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .gray200,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation2']!),
                      ),
                    ],
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation1']!),
            ),
          ],
        ),
      ),
    );
  }
}
