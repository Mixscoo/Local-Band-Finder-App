import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/band_nav_menu/band_nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/modals/logout_dialog/logout_dialog_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'band_profile_page_widget.dart' show BandProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BandProfilePageModel extends FlutterFlowModel<BandProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BandNavMenu component.
  late BandNavMenuModel bandNavMenuModel;

  @override
  void initState(BuildContext context) {
    bandNavMenuModel = createModel(context, () => BandNavMenuModel());
  }

  @override
  void dispose() {
    bandNavMenuModel.dispose();
  }
}
