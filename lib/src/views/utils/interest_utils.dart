import 'dart:math';

import '../../logic/models/investment_model.dart';

enum CalculationIdentifiers {
  final_value,
  interest_accrued,
  return_percentage,
}

class Calculation {
  final double finalValue;
  final double interestAccrued;
  final double returnPercentage;

  Calculation(
      {required this.finalValue,
      required this.interestAccrued,
      required this.returnPercentage});
}

abstract class InterestUtils {
  static Calculation calculate(InvestmentDataInputs input) {
    double interestMult =
        pow((input.interestRate / 100.0 + 1.0), input.timeDeltaInYears)
            .toDouble();
    double finalValue = interestMult * input.principle;
    double interestAccrued = finalValue - input.principle;
    return Calculation(
        finalValue: finalValue,
        interestAccrued: interestAccrued,
        returnPercentage: (interestMult - 1.0) * 100);
  }
}
