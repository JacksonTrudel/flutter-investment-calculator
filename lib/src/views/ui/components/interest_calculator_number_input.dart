import 'package:flutter/material.dart';

class InterestCalculatorNumberInput extends StatelessWidget {
  final String label;
  final double value;
  final void Function(String)? onChanged;

  const InterestCalculatorNumberInput(
      {Key? key,
      required this.label,
      required this.value,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: label,
        ),
        keyboardType:
            const TextInputType.numberWithOptions(decimal: true, signed: false),
        initialValue: value.toString(),
        onChanged: onChanged);
  }
}
