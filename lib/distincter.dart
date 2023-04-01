import 'dart:io';

import 'package:distincter/structures/pair.dart';

import 'model/distincter_state_status.dart';

Future<Pair<DistincterCheckStatus, List<String>>> runDistincterFor(
    File file) async {
  final content = file
      .readAsLinesSync()
      .where((line) => line.isNotEmpty && line.startsWith('-'));
  var status = DistincterCheckStatus.correct;
  final originalContent = <String>{};
  final duplicates = <String>{};
  for (final line in content) {
    if (originalContent.contains(line)) {
      status = DistincterCheckStatus.error;
      duplicates.add(line);
    } else {
      originalContent.add(line);
    }
  }
  return Pair(status, duplicates.toList());
}
