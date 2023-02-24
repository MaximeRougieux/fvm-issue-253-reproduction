import 'dart:io';

bool? isBrewInPath() {
  return Platform.environment['PATH']?.split(':').contains('/opt/homebrew/bin');
}
