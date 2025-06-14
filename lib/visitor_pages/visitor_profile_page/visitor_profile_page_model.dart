import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/visitor_nav_menu/visitor_nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/modals/logout_dialog/logout_dialog_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'visitor_profile_page_widget.dart' show VisitorProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VisitorProfilePageModel
    extends FlutterFlowModel<VisitorProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

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
