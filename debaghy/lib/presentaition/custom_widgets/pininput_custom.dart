import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PininputCustom extends StatefulWidget {
  final TextEditingController controller;
  const PininputCustom({super.key, required this.controller});

  @override
  State<PininputCustom> createState() => _PininputCustomState();
}

class _PininputCustomState extends State<PininputCustom> {
  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: widget.controller,
    );
  }
}
