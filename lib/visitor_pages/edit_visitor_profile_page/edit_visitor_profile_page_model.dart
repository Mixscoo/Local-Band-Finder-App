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
import 'dart:ui';
import '/index.dart';
import 'edit_visitor_profile_page_widget.dart'
    show EditVisitorProfilePageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditVisitorProfilePageModel
    extends FlutterFlowModel<EditVisitorProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadDataZqz = false;
  FFUploadedFile uploadedLocalFile_uploadDataZqz =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataZqz = '';

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
  // Stores action output result for [Firestore Query - Query a collection] action in Save-ChangesButton widget.
  UsersRecord? checkUsenameExist;

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
