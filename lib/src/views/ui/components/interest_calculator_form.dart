import 'package:flutter/material.dart';
import 'package:my_first_app/src/logic/models/investment_model.dart';
import 'package:my_first_app/src/views/ui/components/interest_calculator_number_input.dart';
import 'package:provider/provider.dart';

class InterestCalculatorForm extends StatelessWidget {
  const InterestCalculatorForm({Key? key}) : super(key: key);

  void _handleDoubleInput(String? newVal, void Function(double) fieldSetter) {
    if (newVal == null || newVal.isEmpty) {
      return;
    }
    double? parsed = double.tryParse(newVal);
    if (parsed != null) {
      fieldSetter(parsed);
    }
  }

  Widget styleInputField(Widget c) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0), child: c);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InvestmentModel>(
        builder: (context, investmentModelData, child) {
      return Column(
        children: [
          styleInputField(InterestCalculatorNumberInput(
            label: 'Principle',
            value: investmentModelData.principle,
            onChanged: (newVal) =>
                _handleDoubleInput(newVal, investmentModelData.setPrinciple),
            inputPrefix: const Text('\$'),
          )),
          styleInputField(InterestCalculatorNumberInput(
            label: 'Interest Rate',
            value: investmentModelData.interestRate,
            onChanged: (newVal) =>
                _handleDoubleInput(newVal, investmentModelData.setInterestRate),
            inputSuffix: const Text('%'),
          )),
          styleInputField(InterestCalculatorNumberInput(
            label: 'Investment Period (in years)',
            value: investmentModelData.timeDeltaInYears,
            onChanged: (newVal) => _handleDoubleInput(
                newVal, investmentModelData.setTimeDeltaInYears),
            inputSuffix: const Text('years'),
          )),
        ],
      );
    });
  }
}
