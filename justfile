default: 
  just --list

# Show all commands and info
help: 
  just --list

# Codgen build
codegen: 
  fvm flutter pub run build_runner build --delete-conflicting-outputs

# Codegen watch
codegen-watch: 
  fvm flutter pub run build_runner watch --delete-conflicting-outputs

