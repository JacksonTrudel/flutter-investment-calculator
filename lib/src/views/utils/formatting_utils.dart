import 'package:intl/intl.dart';

abstract class FormattingUtils {
  static NumberFormat formatter =
      NumberFormat.currency(locale: "en_US", symbol: "\$");

  static String formatAsCurrency(double val) {
    return formatter.format(val);
  }
}
