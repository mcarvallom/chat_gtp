import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/chat/chat_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cuenta_new_model.dart';
export 'cuenta_new_model.dart';

class CuentaNewWidget extends StatefulWidget {
  const CuentaNewWidget({Key? key}) : super(key: key);

  @override
  _CuentaNewWidgetState createState() => _CuentaNewWidgetState();
}

class _CuentaNewWidgetState extends State<CuentaNewWidget>
    with TickerProviderStateMixin {
  late CuentaNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'columnOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(-0.349, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(-0.349, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CuentaNewModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'CuentaNew'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CUENTA_NEW_PAGE_CuentaNew_ON_INIT_STATE');
      logFirebaseEvent('CuentaNew_update_widget_state');
      setState(() {
        _model.create = false;
      });
    });

    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    _model.nombreDeUsuarioController ??= TextEditingController();
    _model.emailAddressCreateController ??= TextEditingController();
    _model.passwordCreateController ??= TextEditingController();
    _model.passwordConfirmController ??= TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        32.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Chat GTP 3.5 Turbo',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          constraints: BoxConstraints(
                            maxWidth: 579.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 4.0, 4.0, 4.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          32.0, 24.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'CUENTA_NEW_PAGE_Text_54517vtv_ON_TAP');
                                          logFirebaseEvent(
                                              'Text_update_widget_state');
                                          setState(() {
                                            _model.create = false;
                                          });
                                        },
                                        child: Text(
                                          'Entrar',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Urbanist',
                                                color: _model.create == false
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          32.0, 24.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'CUENTA_NEW_PAGE_Text_77v7ya10_ON_TAP');
                                          logFirebaseEvent(
                                              'Text_update_widget_state');
                                          setState(() {
                                            _model.create = true;
                                          });
                                        },
                                        child: Text(
                                          'Crear Cuenta',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Urbanist',
                                                color: _model.create == true
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 12.0, 0.0, 24.0),
                                  child: Text(
                                    'Comencemos llenando el siguiente formulario.',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                                if (_model.create == false)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .emailAddressController,
                                                autofocus: true,
                                                autofillHints: [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Email',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(24.0, 24.0,
                                                              24.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                validator: _model
                                                    .emailAddressControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller:
                                                    _model.passwordController,
                                                autofillHints: [
                                                  AutofillHints.password
                                                ],
                                                obscureText:
                                                    !_model.passwordVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Contraseña',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(24.0, 24.0,
                                                              24.0, 24.0),
                                                  suffixIcon: InkWell(
                                                    onTap: () => setState(
                                                      () => _model
                                                              .passwordVisibility =
                                                          !_model
                                                              .passwordVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .passwordControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'CUENTA_NEW_INICIAR_SESIÓN_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_auth');

                                                  final user = await authManager
                                                      .signInWithEmail(
                                                    context,
                                                    _model
                                                        .emailAddressController
                                                        .text,
                                                    _model.passwordController
                                                        .text,
                                                  );
                                                  if (user == null) {
                                                    return;
                                                  }

                                                  await Navigator
                                                      .pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ChatWidget(),
                                                    ),
                                                    (r) => false,
                                                  );
                                                },
                                                text: 'Iniciar Sesión',
                                                options: FFButtonOptions(
                                                  width: 230.0,
                                                  height: 52.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        color: Colors.white,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text:
                                                    'Olvidaste tu contraseña?',
                                                options: FFButtonOptions(
                                                  width: 230.0,
                                                  height: 44.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                          'columnOnPageLoadAnimation1']!),
                                    ),
                                  ),
                                if (_model.create == true)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .nombreDeUsuarioController,
                                                autofocus: true,
                                                autofillHints: [
                                                  AutofillHints.username
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Nombre de usuario',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFE0E3E7),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(24.0, 24.0,
                                                              24.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .nombreDeUsuarioControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .emailAddressCreateController,
                                                autofocus: true,
                                                autofillHints: [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Email',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFE0E3E7),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(24.0, 24.0,
                                                              24.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                validator: _model
                                                    .emailAddressCreateControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .passwordCreateController,
                                                autofillHints: [
                                                  AutofillHints.password
                                                ],
                                                obscureText: !_model
                                                    .passwordCreateVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Contraseña',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFE0E3E7),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(24.0, 24.0,
                                                              24.0, 24.0),
                                                  suffixIcon: InkWell(
                                                    onTap: () => setState(
                                                      () => _model
                                                              .passwordCreateVisibility =
                                                          !_model
                                                              .passwordCreateVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordCreateVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .passwordCreateControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .passwordConfirmController,
                                                autofillHints: [
                                                  AutofillHints.password
                                                ],
                                                obscureText: !_model
                                                    .passwordConfirmVisibility,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Confirmar Contraseña',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFE0E3E7),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(24.0, 24.0,
                                                              24.0, 24.0),
                                                  suffixIcon: InkWell(
                                                    onTap: () => setState(
                                                      () => _model
                                                              .passwordConfirmVisibility =
                                                          !_model
                                                              .passwordConfirmVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordConfirmVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                minLines: 1,
                                                validator: _model
                                                    .passwordConfirmControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'CUENTA_NEW_PAGE_CREAR_CUENTA_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_auth');
                                                  if (_model
                                                          .passwordCreateController
                                                          .text !=
                                                      _model
                                                          .passwordConfirmController
                                                          .text) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Passwords don\'t match!',
                                                        ),
                                                      ),
                                                    );
                                                    return;
                                                  }

                                                  final user = await authManager
                                                      .createAccountWithEmail(
                                                    context,
                                                    _model
                                                        .emailAddressController
                                                        .text,
                                                    _model
                                                        .passwordCreateController
                                                        .text,
                                                  );
                                                  if (user == null) {
                                                    return;
                                                  }

                                                  final usersCreateData =
                                                      createUsersRecordData(
                                                    displayName: _model
                                                        .nombreDeUsuarioController
                                                        .text,
                                                  );
                                                  await UsersRecord.collection
                                                      .doc(user.uid)
                                                      .update(usersCreateData);

                                                  await Navigator
                                                      .pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ChatWidget(),
                                                    ),
                                                    (r) => false,
                                                  );
                                                },
                                                text: 'Crear Cuenta',
                                                options: FFButtonOptions(
                                                  width: 230.0,
                                                  height: 52.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        color: Colors.white,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                          'columnOnPageLoadAnimation2']!),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/f-f-games-660ryh/assets/41gtlg4nnch2/demoProject@2x.jpg',
                          ),
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
