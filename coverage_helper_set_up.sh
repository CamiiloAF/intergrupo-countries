file=test/coverage_helper_test.dart

echo "// Helper file to make coverage work for all dart files\n" > $file
echo "// ignore_for_file: unused_import" >> $file

find lib '!' -path '*generated*/*' '!' -name '*.g.dart' '!' -name '*.part.dart' '!' -name '*.freezed.dart' -name '*.dart' | cut -c4- | awk -v package=$1 '{printf "import '\''package:intergrupo%s%s'\'';\n", package, $1}' >> $file
echo "void main(){}" >> $file

lcov --remove coverage/lcov.info 'lib/*/*.freezed.dart' 'lib/*/*.g.dart' 'lib/*/*.part.dart' 'lib/generated/*.dart' 'lib/generated/*/*.dart' -o coverage/lcov.info