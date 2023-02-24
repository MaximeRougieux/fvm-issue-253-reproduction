A simple example to reproduce fvm stripping brew from the PATH when launched on macOS.

Steps to reproduce :
- Make sure dart is installed via your flutter install or any other way than with brew (you need two installs of dart to reproduce the issue)
- Make sure dart is installed with brew by entering brew list
  - Note: Dart is installed with brew when running `brew install fvm` which is the recommended way of installing fvm.
- If not, install it with `brew install dart`
- Run `fvm dart run bin/fvm_brew_issue_reproduce.dart`
  - You should see the following output :
    ```
    Main process contains /opt/homebrew/bin in PATH: true
    Sub process contains /opt/homebrew/bin in PATH: false
    ```
- Run `brew uninstall dart`
- Rerun `fvm dart run bin/fvm_brew_issue_reproduce.dart`
  - You should now see the following output :
    ```
    Main process contains /opt/homebrew/bin in PATH: true
    Sub process contains /opt/homebrew/bin in PATH: true
    ```