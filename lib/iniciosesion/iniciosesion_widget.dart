import '/auth/base_auth_user_provider.dart';
import '/chat/chat_widget.dart';
import '/cuenta_new/cuenta_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'iniciosesion_model.dart';
export 'iniciosesion_model.dart';

class IniciosesionWidget extends StatefulWidget {
  const IniciosesionWidget({Key? key}) : super(key: key);

  @override
  _IniciosesionWidgetState createState() => _IniciosesionWidgetState();
}

class _IniciosesionWidgetState extends State<IniciosesionWidget> {
  late IniciosesionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IniciosesionModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'iniciosesion'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('INICIOSESION_iniciosesion_ON_INIT_STATE');
      if (loggedIn) {
        logFirebaseEvent('iniciosesion_navigate_to');
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatWidget(),
          ),
        );
      } else {
        logFirebaseEvent('iniciosesion_navigate_to');
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CuentaNewWidget(),
          ),
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
    );
  }
}
