import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecSenhaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for InsiraEmail widget.
  TextEditingController? insiraEmailController;
  String? Function(BuildContext, String?)? insiraEmailControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    insiraEmailController?.dispose();
  }

  /// Additional helper methods are added here.

}
