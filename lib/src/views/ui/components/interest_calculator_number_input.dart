import 'package:flutter/material.dart';

class InterestCalculatorNumberInput extends StatelessWidget {
  final String label;
  final double value;
  Text? inputSuffix = null;
  Text? inputPrefix = null;
  final void Function(String)? onChanged;

  InterestCalculatorNumberInput(
      {Key? key,
      required this.label,
      required this.value,
      required this.onChanged,
      this.inputSuffix,
      this.inputPrefix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: label,
            suffix: inputSuffix,
            prefix: inputPrefix),
        keyboardType:
            const TextInputType.numberWithOptions(decimal: true, signed: false),
        initialValue: value.toString(),
        onChanged: onChanged);
  }
}
