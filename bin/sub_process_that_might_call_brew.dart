import 'package:fvm_brew_issue_reproduce/is_brew_in_path.dart';

void main() {
  print(
    "Sub process contains /opt/homebrew/bin in PATH: "
    "${isBrewInPath()}",
  );

  return;
}
