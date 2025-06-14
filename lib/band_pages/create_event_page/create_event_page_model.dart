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
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'create_event_page_widget.dart' show CreateEventPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateEventPageModel extends FlutterFlowModel<CreateEventPageWidget> {
  ///  Local state fields for this page.

  int? startingIndex = 0;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in CreateEventPage widget.
  UserPreferencesRecord? bandMusicGenrePreference;
  // Stores action output result for [Firestore Query - Query a collection] action in CreateEventPage widget.
  PostEventsRecord? retrievePostID;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for EventName widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
  String? _eventNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return '1';
    }

    return null;
  }

  // State field(s) for AboutEvent widget.
  FocusNode? aboutEventFocusNode;
  TextEditingController? aboutEventTextController;
  String? Function(BuildContext, String?)? aboutEventTextControllerValidator;
  String? _aboutEventTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return '1';
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for CityEventLocated widget.
  String? cityEventLocatedValue;
  FormFieldController<String>? cityEventLocatedValueController;
  // State field(s) for EventAddress1 widget.
  FocusNode? eventAddress1FocusNode;
  TextEditingController? eventAddress1TextController;
  String? Function(BuildContext, String?)? eventAddress1TextControllerValidator;
  String? _eventAddress1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for EventAddress2 widget.
  FocusNode? eventAddress2FocusNode;
  TextEditingController? eventAddress2TextController;
  String? Function(BuildContext, String?)? eventAddress2TextControllerValidator;
  bool isDataUploading_uploadDataCfn = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataCfn = [];
  List<String> uploadedFileUrls_uploadDataCfn = [];

  // Stores action output result for [Validate Form] action in Basic-Next-Button widget.
  bool? validateFormBasic;
  // State field(s) for MusicGenre widget.
  List<String>? musicGenreValue;
  FormFieldController<List<String>>? musicGenreValueController;
  // Stores action output result for [Validate Form] action in Genre-Next-Button widget.
  bool? validateFormGenre;
  // State field(s) for ChargeFee widget.
  FocusNode? chargeFeeFocusNode;
  TextEditingController? chargeFeeTextController;
  String? Function(BuildContext, String?)? chargeFeeTextControllerValidator;
  String? _chargeFeeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return '1';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Done-Button widget.
  bool? validateFormChargefee;

  @override
  void initState(BuildContext context) {
    eventNameTextControllerValidator = _eventNameTextControllerValidator;
    aboutEventTextControllerValidator = _aboutEventTextControllerValidator;
    eventAddress1TextControllerValidator =
        _eventAddress1TextControllerValidator;
    chargeFeeTextControllerValidator = _chargeFeeTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();

    aboutEventFocusNode?.dispose();
    aboutEventTextController?.dispose();

    eventAddress1FocusNode?.dispose();
    eventAddress1TextController?.dispose();

    eventAddress2FocusNode?.dispose();
    eventAddress2TextController?.dispose();

    chargeFeeFocusNode?.dispose();
    chargeFeeTextController?.dispose();
  }
}
