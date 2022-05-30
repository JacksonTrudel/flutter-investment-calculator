import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../logic/models/investment_model.dart';
import '../../utils/formatting_utils.dart';

class InterestCalculations extends StatelessWidget {
  const InterestCalculations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
        child: Column(children: [
          Text(
            'Results',
            style: TextStyle(fontSize: 30, color: Colors.lightGreen[600]),
          ),
          // ALL RESULT FIELDS
          Container(
              padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0.0),
              alignment: Alignment.topLeft,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<InvestmentModel>(
                        builder: (context, investmentModelData, child) {
                      return Text(
                          'Final value: ${FormattingUtils.formatAsCurrency(investmentModelData.principle)}',
                          textAlign: TextAlign.left);
                    }),
                    Consumer<InvestmentModel>(
                        builder: (context, investmentModelData, child) {
                      return Text(
                          'Interest Accrued: ${FormattingUtils.formatAsCurrency(investmentModelData.interestAccrued)}');
                    }),
                    Consumer<InvestmentModel>(
                        builder: (context, investmentModelData, child) {
                      return Text(
                          'ROI: ${investmentModelData.returnOnInvestment.toStringAsFixed(2)}%');
                    })
                  ]))
        ]));
  }
}
