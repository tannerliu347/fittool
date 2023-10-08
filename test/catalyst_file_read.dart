import 'dart:io';

import 'package:csv/csv.dart';
import 'package:fit_tool/fit_tool.dart';

void main() async {
  final stopwatch = Stopwatch()..start();
  final file = File('test_data/8524442520_ACTIVITY.fit');
  var byteStream = file.openRead();
  final messageStream = byteStream.transform(FitDecoder());
  await messageStream
      .where((message) => message is RecordMessage)
      .forEach((message) {
    message as RecordMessage;
    if (message.positionLat != null && message.positionLong != null) {
      // _logger.i('position: ${message.positionLat}, ${message.positionLong}');
    }
  });
  stopwatch.stop();
  print('This test took ${stopwatch.elapsedMilliseconds} ms to finish');
}
