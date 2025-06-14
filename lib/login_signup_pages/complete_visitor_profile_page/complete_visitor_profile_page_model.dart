import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/modals/create_account_success_dialog/create_account_success_dialog_widget.dart';
import 'dart:ui';
import 'complete_visitor_profile_page_widget.dart'
    show CompleteVisitorProfilePageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompleteVisitorProfilePageModel
    extends FlutterFlowModel<CompleteVisitorProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadDataQh1 = false;
  FFUploadedFile uploadedLocalFile_uploadDataQh1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataQh1 = '';

  // State field(s) for DisplayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameTextController;
  String? Function(BuildContext, String?)? displayNameTextControllerValidator;
  String? _displayNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CityLocated widget.
  String? cityLocatedValue;
  FormFieldController<String>? cityLocatedValueController;
  // State field(s) for MusicGenre widget.
  List<String>? musicGenreValue;
  FormFieldController<List<String>>? musicGenreValueController;
  // Stores action output result for [Validate Form] action in Complete-Profile-Button widget.
  bool? form1;
  // Stores action output result for [Firestore Query - Query a collection] action in Complete-Profile-Button widget.
  UsersRecord? checkUsernameExist;

  @override
  void initState(BuildContext context) {
    displayNameTextControllerValidator = _displayNameTextControllerValidator;
  }

  @override
  void dispose() {
    displayNameFocusNode?.dispose();
    displayNameTextController?.dispose();
  }
}
