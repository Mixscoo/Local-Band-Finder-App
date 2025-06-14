import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/band_nav_menu/band_nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'band_home_page_widget.dart' show BandHomePageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BandHomePageModel extends FlutterFlowModel<BandHomePageWidget> {
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
