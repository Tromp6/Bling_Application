import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart' as SpinKit;

class LoadingSpinKit extends StatelessWidget {
  const LoadingSpinKit({Key? key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        child: Center(
          child: SpinKit.SpinKitWave(
            color: Colors.white,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}