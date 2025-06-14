import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/visitor_nav_menu/visitor_nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'visitor_home_page_widget.dart' show VisitorHomePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VisitorHomePageModel extends FlutterFlowModel<VisitorHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in VisitorHomePage widget.
  UserPreferencesRecord? checkUserLocation;
  // Stores action output result for [Firestore Query - Query a collection] action in VisitorHomePage widget.
  List<PostEventsRecord>? checkPostBaseOnLocation;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for VisitorNavMenu component.
  late VisitorNavMenuModel visitorNavMenuModel;

  @override
  void initState(BuildContext context) {
    visitorNavMenuModel = createModel(context, () => VisitorNavMenuModel());
  }

  @override
  void dispose() {
    visitorNavMenuModel.dispose();
  }
}
