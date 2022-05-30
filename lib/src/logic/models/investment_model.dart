import 'package:flutter/material.dart';
import 'package:my_first_app/src/views/utils/interest_utils.dart';

class InvestmentDataInputs {
  double principle = 100.0;
  double interestRate = 5.0;
  double timeDeltaInYears = 1.0;
}

class InvestmentModel extends ChangeNotifier {
  final InvestmentDataInputs _inputs = InvestmentDataInputs();
  late Calculation _calculatedData;

  InvestmentModel() {
    _calculatedData = InterestUtils.calculate(_inputs);
  }

  double get principle => _inputs.principle;

  void setPrinciple(double newVal) {
    _inputs.principle = newVal;
    _calculatedData = InterestUtils.calculate(_inputs);
    // tell listeners to rebuild
    notifyListeners();
  }

  double get interestRate => _inputs.interestRate;

  void setInterestRate(double newVal) {
    _inputs.interestRate = newVal;
    _calculatedData = InterestUtils.calculate(_inputs);
    notifyListeners();
  }

  double get timeDeltaInYears => _inputs.timeDeltaInYears;

  void setTimeDeltaInYears(double newVal) {
    _inputs.timeDeltaInYears = newVal;
    _calculatedData = InterestUtils.calculate(_inputs);
    notifyListeners();
  }

  /// Getters for calculated fields
  double get finalValue => _calculatedData.finalValue;
  double get interestAccrued => _calculatedData.interestAccrued;
  double get returnOnInvestment => _calculatedData.returnPercentage;
}
