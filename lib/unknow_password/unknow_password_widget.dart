import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UnknowPasswordWidget extends StatefulWidget {
  const UnknowPasswordWidget({Key? key}) : super(key: key);

  @override
  _UnknowPasswordWidgetState createState() => _UnknowPasswordWidgetState();
}

class _UnknowPasswordWidgetState extends State<UnknowPasswordWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 90,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xB3FFFFFF), Color(0x00FFFFFF)],
                                stops: [0, 1],
                                begin: AlignmentDirectional(0, -1),
                                end: AlignmentDirectional(0, 1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 40, 16, 16),
                          child: InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xB3FFFFFF),
                              elevation: 3,
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.87,
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 20),
                            child: Text(
                              '¿Olvidaste tu contraseña?',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 22,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'Podemos ayudarte a restablecer tu contraseña.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.all(25.0),
                      child: Center(
                        child: Column(
                          children: [
                            TextField(
                                decoration: new InputDecoration(
                                  prefixIcon: Icon(Icons.email, size: 20),
                                  hintText: 'Ingresa tu email',
                                )
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: Colors.indigo),
                              child: Text(
                                'Obten un codigo de verificacion',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: (){
                                openDialog();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Padding(
                    //   padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 40),
                    //   child: FFButtonWidget(
                    //     onPressed: () {
                    //         Navigator.pop(context);
                    //     },
                    //     text: 'Regresar al inicio de sesion',
                    //     options: FFButtonOptions(
                    //       width: 200,
                    //       height: 40,
                    //       color: Color(0xFF4C1BC7),
                    //       textStyle:
                    //           FlutterFlowTheme.of(context).subtitle2.override(
                    //                 fontFamily: 'Poppins',
                    //                 color: Colors.white,
                    //               ),
                    //       elevation: 2,
                    //       borderSide: BorderSide(
                    //         color: Colors.transparent,
                    //         width: 1,
                    //       ),
                    //       borderRadius: 8,
                    //       iconColor: Colors.indigo, disabledColor: Colors.white70, splashColor: Colors.indigo,
                    //       iconPadding: EdgeInsets.all(1), padding: EdgeInsets.all(1), iconSize: 2, disabledTextColor: Colors.white70,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
  Future openDialog()=>showDialog(
    context: context,
    builder: (context)=>AlertDialog(
      title: Text(
        'Hemos  enviado un correo a tu cuenta para reestablecer tu contraseña, por favor verifica tu correo.',
        textAlign: TextAlign.justify,
        style: GoogleFonts.getFont(
          'Lexend Deca',
          color:
          FlutterFlowTheme.of(context).primaryColor,
        ),
      ),
      actions: [
        TextButton(
          child: Text('Cerrar'),
          onPressed: submit,
        )
      ],
    ),
  );

  void submit(){
    Navigator.of(context).pop();
  }
}
