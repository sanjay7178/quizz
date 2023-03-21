import 'package:flutter/material.dart';
import 'package:quizz/shared/bottom_nav.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
// import '/flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// import 'home_page_model.dart';
// export 'home_page_model.dart';
// class RealScreen extends StatelessWidget {
//   const RealScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       // bottomNavigationBar: BottomNavBar(),
//     );
//   }
// }

class RealScreen extends StatefulWidget {
  const RealScreen({Key? key}) : super(key: key);

  @override
  _RealScreenState createState() => _RealScreenState();
}

class _RealScreenState extends State<RealScreen> {
  // late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  // @override
  // void initState() {
  //   super.initState();
  //   _model = createModel(context, () => HomePageModel());
  // }

  // @override
  // void dispose() {
  //   _model.dispose();

  //   _unfocusNode.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        // backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        // automaticallyImplyLeading: true,
        title: Text(
          'Realtime View',
          // style: FlutterFlowTheme.of(context).bodyText1.override(
          //       fontFamily: 'Poppins',
          //       color: Color(0xFFFAFEFF),
          //       fontSize: 20,
          //       fontWeight: FontWeight.w500,
          //     ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 4,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(130, 600, 120, 0),
            child: FFButtonWidget(
              onPressed: () async {
                // final selectedMedia = await selectMediaWithSourceBottomSheet(
                //   context: context,
                //   allowPhoto: true,
                // );
                // if (selectedMedia != null &&
                //     selectedMedia.every(
                //         (m) => validateFileFormat(m.storagePath, context))) {
                //   setState(() => _model.isMediaUploading = true);
                //   var selectedUploadedFiles = <FFUploadedFile>[];

                //   try {
                //     selectedUploadedFiles = selectedMedia
                //         .map((m) => FFUploadedFile(
                //               name: m.storagePath.split('/').last,
                //               bytes: m.bytes,
                //               height: m.dimensions?.height,
                //               width: m.dimensions?.width,
                //             ))
                //         .toList();
                //   } finally {
                //     // _model.isMediaUploading = false;
                //   }
                //   if (selectedUploadedFiles.length == selectedMedia.length) {
                //     setState(() {
                //       // _model.uploadedLocalFile = selectedUploadedFiles.first;
                //     });
                //   } else {
                //     setState(() {});
                //     return;
                //   }
                // }
              },
              text: 'Button',
              icon: Icon(
                Icons.add_a_photo_outlined,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 40,
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                // borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
