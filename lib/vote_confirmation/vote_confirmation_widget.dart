import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'vote_confirmation_model.dart';
export 'vote_confirmation_model.dart';

class VoteConfirmationWidget extends StatefulWidget {
  const VoteConfirmationWidget({
    super.key,
    required this.electionId,
    required this.voterId,
    required this.candiadetId,
    required this.voterImg,
  });

  final DocumentReference? electionId;
  final DocumentReference? voterId;
  final DocumentReference? candiadetId;
  final String? voterImg;

  @override
  State<VoteConfirmationWidget> createState() => _VoteConfirmationWidgetState();
}

class _VoteConfirmationWidgetState extends State<VoteConfirmationWidget> {
  late VoteConfirmationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VoteConfirmationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Vote Confirmation',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/967781_354-removebg-preview.png',
                        width: 300.0,
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().CandidateId = null;
                              safeSetState(() {});
                              final localAuth = LocalAuthentication();
                              bool isBiometricSupported =
                                  await localAuth.isDeviceSupported();

                              if (isBiometricSupported) {
                                try {
                                  _model.fingerprint =
                                      await localAuth.authenticate(
                                          localizedReason:
                                              'Pease authenticate to complete your vote.');
                                } on PlatformException {
                                  _model.fingerprint = false;
                                }
                                safeSetState(() {});
                              }

                              await VotesRecord.collection
                                  .doc()
                                  .set(createVotesRecordData(
                                    voterID: widget.voterId,
                                    electionID: widget.electionId,
                                    candidateID: widget.candiadetId,
                                    voteDateTime: getCurrentTimestamp,
                                    voteImg: widget.voterImg,
                                  ));

                              context.goNamed(
                                'Sucess',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                  ),
                                },
                              );

                              safeSetState(() {});
                            },
                            text: 'CONFIRM',
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
