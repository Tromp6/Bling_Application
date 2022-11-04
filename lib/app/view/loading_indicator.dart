import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:flutter_spinkit/flutter_spinkit.dart' as SpinKit;

class LoadingSpinKit extends StatelessWidget {
  const LoadingSpinKit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child:  Center(
        child: SpinKit.SpinKitWave(
          color: Colors.white,
        ),
      ),
    );
  }
}
