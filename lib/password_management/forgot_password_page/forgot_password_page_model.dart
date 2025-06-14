import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'forgot_password_page_widget.dart' show ForgotPasswordPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordPageModel
    extends FlutterFlowModel<ForgotPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Email-ForgotPassword-Account widget.
  FocusNode? emailForgotPasswordAccountFocusNode;
  TextEditingController? emailForgotPasswordAccountTextController;
  String? Function(BuildContext, String?)?
      emailForgotPasswordAccountTextControllerValidator;
  String? _emailForgotPasswordAccountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email format.';
    }
    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Login-Account-Button widget.
  UsersRecord? forgotPasswordEmailExist;

  @override
  void initState(BuildContext context) {
    emailForgotPasswordAccountTextControllerValidator =
        _emailForgotPasswordAccountTextControllerValidator;
  }

  @override
  void dispose() {
    emailForgotPasswordAccountFocusNode?.dispose();
    emailForgotPasswordAccountTextController?.dispose();
  }
}
