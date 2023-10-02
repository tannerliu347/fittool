import 'dart:io';

import 'package:csv/csv.dart';
import 'package:fit_tool/fit_tool.dart';

void main() async {
  final file = File('test_data/8524442520_ACTIVITY.fit');
  final fileBytes = await file.readAsBytes();
  final fitFile = FitFile.fromBytes(fileBytes);

  // write as csv
  final outFile = File('test_data/temp/garmin_fit.csv');
  final csv = const ListToCsvConverter().convert(fitFile.toRows());
  await outFile.writeAsString(csv);
}
