import 'dart:io';

import 'package:distincter/distincter.dart' as distincter;
import 'package:distincter/model/distincter_state_status.dart';
import 'package:distincter/structures/pair.dart';

void main(List<String> arguments) async {
  var files = Directory.current
      .listSync(recursive: true)
      .where((file) => file.path.endsWith('md'));
  var isValid = true;
  for (final file in files) {
    final path = file.path;
    final name = path.substring(path.lastIndexOf('/') + 1);
    var code = _handleResult(
      name: name,
      result: await distincter.runDistincterFor(File(path)),
    );
    isValid ^= code == 0;
  }
  exit(isValid ? 0 : 1);
}

int _handleResult({
  required String name,
  required Pair<DistincterCheckStatus, List<String>> result,
}) =>
    result.first.when(
      correct: () {
        print('$name done without errors');
        return 0;
      },
      error: () {
        print('$name done with errors\n${result.second.join('\n')}');
        return 1;
      },
    );
