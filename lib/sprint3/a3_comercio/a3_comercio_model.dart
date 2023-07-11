import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/sprint3/compnents/mostrarcomo/mostrarcomo_widget.dart';
import '/sprint3/compnents/navbar/navbar_widget.dart';
import '/sprint3/compnents/side_bar/side_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class A3ComercioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
    sideBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
