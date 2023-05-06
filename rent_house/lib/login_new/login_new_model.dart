import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginNewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SignEmail widget.
  TextEditingController? signEmailController;
  String? Function(BuildContext, String?)? signEmailControllerValidator;
  // State field(s) for SignPassword widget.
  TextEditingController? signPasswordController;
  late bool signPasswordVisibility;
  String? Function(BuildContext, String?)? signPasswordControllerValidator;
  // State field(s) for SignUpName widget.
  TextEditingController? signUpNameController;
  String? Function(BuildContext, String?)? signUpNameControllerValidator;
  // State field(s) for SignUpEmail widget.
  TextEditingController? signUpEmailController;
  String? Function(BuildContext, String?)? signUpEmailControllerValidator;
  // State field(s) for SignUpPassword widget.
  TextEditingController? signUpPasswordController;
  late bool signUpPasswordVisibility;
  String? Function(BuildContext, String?)? signUpPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signPasswordVisibility = false;
    signUpPasswordVisibility = false;
  }

  void dispose() {
    signEmailController?.dispose();
    signPasswordController?.dispose();
    signUpNameController?.dispose();
    signUpEmailController?.dispose();
    signUpPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
