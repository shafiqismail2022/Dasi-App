import 'package:flutter/material.dart';
// import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

class TextRecognitionPage extends StatefulWidget {
  const TextRecognitionPage({Key? key}) : super(key: key);

  @override
  State<TextRecognitionPage> createState() => _TextRecognitionPageState();
}

class _TextRecognitionPageState extends State<TextRecognitionPage> {
//   bool isInitialize = false;
//   @override
//   void initState() {
//     FlutterMobileVision.start().then((value) {
//       isInitialize = true;
//     });
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
//       child: RaisedButton(
//           color: Color(0xff4B72D9),
//           child: Text('Scan Booklet Nummber'),
//           onPressed: _scanBookletNo),
//     );
//   }

//   _scanBookletNo() async {
//     List<OcrText> list = [];
//     try {
//       list = await FlutterMobileVision.read(
//         waitTap: true,
//         multiple: false,
//         fps: 5,
//       );
//       for (OcrText text in list) {
//         print('Values ${text.value}');
//       }
//     } catch (e) {}
//   }
// 
}