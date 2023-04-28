import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourTitle widget.
  TextEditingController? yourTitleController;
  String? Function(BuildContext, String?)? yourTitleControllerValidator;
  // State field(s) for yourPrice widget.
  TextEditingController? yourPriceController;
  String? Function(BuildContext, String?)? yourPriceControllerValidator;
  // State field(s) for yourCity widget.
  TextEditingController? yourCityController;
  String? Function(BuildContext, String?)? yourCityControllerValidator;
  // State field(s) for yourContact widget.
  TextEditingController? yourContactController;
  String? Function(BuildContext, String?)? yourContactControllerValidator;
  // State field(s) for yourLocality widget.
  TextEditingController? yourLocalityController;
  String? Function(BuildContext, String?)? yourLocalityControllerValidator;
  // State field(s) for yourMunicipality widget.
  TextEditingController? yourMunicipalityController;
  String? Function(BuildContext, String?)? yourMunicipalityControllerValidator;
  // State field(s) for yourDescription widget.
  TextEditingController? yourDescriptionController;
  String? Function(BuildContext, String?)? yourDescriptionControllerValidator;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    yourTitleController?.dispose();
    yourPriceController?.dispose();
    yourCityController?.dispose();
    yourContactController?.dispose();
    yourLocalityController?.dispose();
    yourMunicipalityController?.dispose();
    yourDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
