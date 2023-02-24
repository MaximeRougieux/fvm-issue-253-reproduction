import 'dart:io';

import 'package:fvm_brew_issue_reproduce/is_brew_in_path.dart';

Future<void> main(List<String> arguments) async {
  print(
    "Main process contains /opt/homebrew/bin in PATH: "
    "${isBrewInPath()}",
  );

  final process = await Process.start("fvm", [
    "dart",
    "run",
    "bin/sub_process_that_might_call_brew.dart",
  ]);

  await stdout.addStream(process.stdout);

  await process.exitCode;
}
