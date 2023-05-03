import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/iniciosesion/iniciosesion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? respuestadeMensaje;

  ///  State fields for stateful widgets in this page.

  // State field(s) for CampoMensaje widget.
  TextEditingController? campoMensajeController;
  String? Function(BuildContext, String?)? campoMensajeControllerValidator;
  // Stores action output result for [Backend Call - API (generarChat)] action in Button widget.
  ApiCallResponse? apiResult8do;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    campoMensajeController?.dispose();
  }

  /// Additional helper methods are added here.

}
