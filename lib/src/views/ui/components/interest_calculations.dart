import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../logic/models/investment_model.dart';

class InterestCalculations extends StatelessWidget {
  const InterestCalculations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<InvestmentModel>(
        builder: (context, investmentModelData, child) {
      return Column(children: [
        Text(
            'Final value: ${investmentModelData.principle.toStringAsFixed(2)}'),
        Text(
            'Interest Accrued: ${investmentModelData.interestAccrued.toStringAsFixed(2)}'),
        Text(
            'ROI: ${investmentModelData.returnOnInvestment.toStringAsFixed(2)}')
      ]);
    });
  }
}
