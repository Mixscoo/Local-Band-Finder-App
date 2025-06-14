import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/modals/login_account_success_dialog/login_account_success_dialog_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Email-Login-Account widget.
  FocusNode? emailLoginAccountFocusNode;
  TextEditingController? emailLoginAccountTextController;
  String? Function(BuildContext, String?)?
      emailLoginAccountTextControllerValidator;
  String? _emailLoginAccountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email format.';
    }
    return null;
  }

  // State field(s) for Password-Login-Account widget.
  FocusNode? passwordLoginAccountFocusNode;
  TextEditingController? passwordLoginAccountTextController;
  late bool passwordLoginAccountVisibility;
  String? Function(BuildContext, String?)?
      passwordLoginAccountTextControllerValidator;
  String? _passwordLoginAccountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Login-Account-Button widget.
  bool? formLogin;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Username-Create-Account widget.
  FocusNode? usernameCreateAccountFocusNode;
  TextEditingController? usernameCreateAccountTextController;
  String? Function(BuildContext, String?)?
      usernameCreateAccountTextControllerValidator;
  String? _usernameCreateAccountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Next-Button widget.
  bool? formUsername;
  // Stores action output result for [Firestore Query - Query a collection] action in Next-Button widget.
  UsersRecord? usernameExist;
  // State field(s) for Band-Name-Create-Account widget.
  FocusNode? bandNameCreateAccountFocusNode;
  TextEditingController? bandNameCreateAccountTextController;
  String? Function(BuildContext, String?)?
      bandNameCreateAccountTextControllerValidator;
  String? _bandNameCreateAccountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Next-Button widget.
  bool? formBandName;
  // Stores action output result for [Firestore Query - Query a collection] action in Next-Button widget.
  UsersRecord? bandNameExist;
  // State field(s) for Email-Create-Account widget.
  FocusNode? emailCreateAccountFocusNode;
  TextEditingController? emailCreateAccountTextController;
  String? Function(BuildContext, String?)?
      emailCreateAccountTextControllerValidator;
  String? _emailCreateAccountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email format.';
    }
    return null;
  }

  // Stores action output result for [Validate Form] action in Next-Button widget.
  bool? formCreateEmail;
  // Stores action output result for [Firestore Query - Query a collection] action in Next-Button widget.
  UsersRecord? checkEmailExist;
  // State field(s) for Password-Create-Account widget.
  FocusNode? passwordCreateAccountFocusNode;
  TextEditingController? passwordCreateAccountTextController;
  late bool passwordCreateAccountVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateAccountTextControllerValidator;
  String? _passwordCreateAccountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Your password must be at least 8 characters long.';
    }
    if (val.length > 4096) {
      return 'Maximum 4096 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\\\$&*~]).*\$')
        .hasMatch(val)) {
      return 'Include an uppercase letter, a lowercase letter, a number, \nand a special character (!@#\\\$&*~).';
    }
    return null;
  }

  // State field(s) for Confirm-Password-Create-Account widget.
  FocusNode? confirmPasswordCreateAccountFocusNode;
  TextEditingController? confirmPasswordCreateAccountTextController;
  late bool confirmPasswordCreateAccountVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordCreateAccountTextControllerValidator;
  String? _confirmPasswordCreateAccountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Your password must be at least 8 characters long.';
    }
    if (val.length > 4096) {
      return 'Maximum 4096 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\\\$&*~]).*\$')
        .hasMatch(val)) {
      return 'Include an uppercase letter, a lowercase letter, a number, \nand a special character (!@#\\\$&*~).';
    }
    return null;
  }

  // Stores action output result for [Validate Form] action in Create-Account-Button widget.
  bool? formCreatePassword;

  @override
  void initState(BuildContext context) {
    emailLoginAccountTextControllerValidator =
        _emailLoginAccountTextControllerValidator;
    passwordLoginAccountVisibility = false;
    passwordLoginAccountTextControllerValidator =
        _passwordLoginAccountTextControllerValidator;
    usernameCreateAccountTextControllerValidator =
        _usernameCreateAccountTextControllerValidator;
    bandNameCreateAccountTextControllerValidator =
        _bandNameCreateAccountTextControllerValidator;
    emailCreateAccountTextControllerValidator =
        _emailCreateAccountTextControllerValidator;
    passwordCreateAccountVisibility = false;
    passwordCreateAccountTextControllerValidator =
        _passwordCreateAccountTextControllerValidator;
    confirmPasswordCreateAccountVisibility = false;
    confirmPasswordCreateAccountTextControllerValidator =
        _confirmPasswordCreateAccountTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailLoginAccountFocusNode?.dispose();
    emailLoginAccountTextController?.dispose();

    passwordLoginAccountFocusNode?.dispose();
    passwordLoginAccountTextController?.dispose();

    usernameCreateAccountFocusNode?.dispose();
    usernameCreateAccountTextController?.dispose();

    bandNameCreateAccountFocusNode?.dispose();
    bandNameCreateAccountTextController?.dispose();

    emailCreateAccountFocusNode?.dispose();
    emailCreateAccountTextController?.dispose();

    passwordCreateAccountFocusNode?.dispose();
    passwordCreateAccountTextController?.dispose();

    confirmPasswordCreateAccountFocusNode?.dispose();
    confirmPasswordCreateAccountTextController?.dispose();
  }
}
