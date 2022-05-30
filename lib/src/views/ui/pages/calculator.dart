import 'package:flutter/material.dart';
import 'package:my_first_app/src/logic/models/investment_model.dart';
import 'package:provider/provider.dart';

import '../../utils/interest_utils.dart';
import '../components/interest_calculator_form.dart';
import '../components/interest_calculations.dart';

enum InterestCadence {
  daily(label: 'Daily'),
  weekly(label: 'Weekly'),
  biweekly(label: 'Bi-Weekly'),
  monthly(label: 'Monthly'),
  yearly(label: 'Yearly');

  final String label;

  const InterestCadence({
    required this.label,
  });
}

class InterestCalculator extends StatefulWidget {
  const InterestCalculator({Key? key}) : super(key: key);

  @override
  _InterestCalculatorState createState() => _InterestCalculatorState();
}

class _InterestCalculatorState extends State<InterestCalculator> {
  InterestCadence interestCadence = InterestCadence.monthly;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Interest Calculator'),
        ),
        body: ChangeNotifierProvider(
          create: (context) => InvestmentModel(),
          child: Column(
            children: const [
              InterestCalculatorForm(),
              InterestCalculations(),
            ],
          ),
        ));
  }
}
